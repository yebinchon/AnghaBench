
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_5__ {unsigned int sec; unsigned int msec; } ;
typedef TYPE_1__ ngx_time_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {scalar_t__ rlim_cur; } ;


 long NGX_CPU_CACHE_LINE ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 scalar_t__ NGX_OK ;
 int RLIMIT_NOFILE ;
 int _SC_LEVEL1_DCACHE_LINESIZE ;
 int _SC_NPROCESSORS_ONLN ;
 int errno ;
 int getpagesize () ;
 int getrlimit (int ,TYPE_2__*) ;
 long ngx_cacheline_size ;
 int ngx_cpuinfo () ;
 int ngx_inherited_nonblocking ;
 scalar_t__ ngx_init_setproctitle (int *) ;
 int ngx_log_error (int ,int *,int ,char*) ;
 scalar_t__ ngx_max_sockets ;
 int ngx_ncpu ;
 scalar_t__ ngx_os_specific_init (int *) ;
 int ngx_pagesize ;
 int ngx_pagesize_shift ;
 scalar_t__ ngx_pid ;
 TYPE_1__* ngx_timeofday () ;
 TYPE_2__ rlmt ;
 int srandom (unsigned int) ;
 void* sysconf (int ) ;

ngx_int_t
ngx_os_init(ngx_log_t *log)
{
    ngx_time_t *tp;
    ngx_uint_t n;
    if (ngx_init_setproctitle(log) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_pagesize = getpagesize();
    ngx_cacheline_size = NGX_CPU_CACHE_LINE;

    for (n = ngx_pagesize; n >>= 1; ngx_pagesize_shift++) { }







    if (ngx_ncpu < 1) {
        ngx_ncpu = 1;
    }
    ngx_cpuinfo();

    if (getrlimit(RLIMIT_NOFILE, &rlmt) == -1) {
        ngx_log_error(NGX_LOG_ALERT, log, errno,
                      "getrlimit(RLIMIT_NOFILE) failed");
        return NGX_ERROR;
    }

    ngx_max_sockets = (ngx_int_t) rlmt.rlim_cur;




    ngx_inherited_nonblocking = 0;


    tp = ngx_timeofday();
    srandom(((unsigned) ngx_pid << 16) ^ tp->sec ^ tp->msec);

    return NGX_OK;
}
