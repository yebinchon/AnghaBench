
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_log_op_t ;
struct TYPE_2__ {int len; int data; } ;


 TYPE_1__ ngx_cached_http_log_time ;
 int * ngx_cpymem (int *,int ,int ) ;

__attribute__((used)) static u_char *
ngx_rtmp_log_var_time_local_getdata(ngx_rtmp_session_t *s, u_char *buf,
    ngx_rtmp_log_op_t *op)
{
    return ngx_cpymem(buf, ngx_cached_http_log_time.data,
                      ngx_cached_http_log_time.len);
}
