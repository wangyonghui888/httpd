dnl ## XXX - Need a more thorough check of the proper flags to use

if test "$MPM_NAME" = "mpmt_pthread" ; then
    apache_apr_flags="--enable-threads"

    APACHE_FAST_OUTPUT(server/mpm/$MPM_NAME/Makefile)

    APACHE_MPM_PTHREAD

dnl Obsolete scoreboard code uses this.
    AC_CHECK_HEADERS(sys/times.h)
    AC_CHECK_FUNCS(times)
fi
