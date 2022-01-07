
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_log_op_t ;
struct TYPE_2__ {size_t len; } ;


 TYPE_1__ ngx_cached_http_log_time ;

__attribute__((used)) static size_t
ngx_rtmp_log_var_time_local_getlen(ngx_rtmp_session_t *s,
    ngx_rtmp_log_op_t *op)
{
    return ngx_cached_http_log_time.len;
}
