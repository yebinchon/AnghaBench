
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_log_op_t ;


 size_t NGX_INT_T_LEN ;

__attribute__((used)) static size_t
ngx_rtmp_log_var_connection_getlen(ngx_rtmp_session_t *s, ngx_rtmp_log_op_t *op)
{
    return NGX_INT_T_LEN;
}
