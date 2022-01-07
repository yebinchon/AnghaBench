
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef int time_t ;
struct TYPE_5__ {int sec; scalar_t__ msec; } ;
typedef TYPE_1__ ngx_time_t ;
typedef int ngx_msec_int_t ;
struct TYPE_6__ {int start_sec; scalar_t__ start_msec; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int ngx_http_log_op_t ;


 int ngx_max (int,int ) ;
 int * ngx_sprintf (int *,char*,int,int) ;
 TYPE_1__* ngx_timeofday () ;

__attribute__((used)) static u_char *
ngx_http_log_request_time(ngx_http_request_t *r, u_char *buf,
    ngx_http_log_op_t *op)
{
    ngx_time_t *tp;
    ngx_msec_int_t ms;

    tp = ngx_timeofday();

    ms = (ngx_msec_int_t)
             ((tp->sec - r->start_sec) * 1000 + (tp->msec - r->start_msec));
    ms = ngx_max(ms, 0);

    return ngx_sprintf(buf, "%T.%03M", (time_t) ms / 1000, ms % 1000);
}
