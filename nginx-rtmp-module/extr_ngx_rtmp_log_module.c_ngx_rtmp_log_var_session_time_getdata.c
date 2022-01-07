
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ epoch; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_log_op_t ;
typedef int int64_t ;


 scalar_t__ ngx_current_msec ;
 int * ngx_sprintf (int *,char*,int) ;

__attribute__((used)) static u_char *
ngx_rtmp_log_var_session_time_getdata(ngx_rtmp_session_t *s, u_char *buf,
    ngx_rtmp_log_op_t *op)
{
    return ngx_sprintf(buf, "%L",
                       (int64_t) (ngx_current_msec - s->epoch) / 1000);
}
