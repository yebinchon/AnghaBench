
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int msec; int sec; } ;
typedef TYPE_1__ ngx_time_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_log_op_t ;


 int * ngx_sprintf (int *,char*,int ,int ) ;
 TYPE_1__* ngx_timeofday () ;

__attribute__((used)) static u_char *
ngx_rtmp_log_var_msec_getdata(ngx_rtmp_session_t *s, u_char *buf,
    ngx_rtmp_log_op_t *op)
{
    ngx_time_t *tp;

    tp = ngx_timeofday();

    return ngx_sprintf(buf, "%T.%03M", tp->sec, tp->msec);
}
