
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_log_op_t ;


 int NGX_RTMP_MAX_ARGS ;
 int NGX_RTMP_MAX_NAME ;
 size_t ngx_max (int ,int ) ;

__attribute__((used)) static size_t
ngx_rtmp_log_var_context_cstring_getlen(ngx_rtmp_session_t *s,
    ngx_rtmp_log_op_t *op)
{
    return ngx_max(NGX_RTMP_MAX_NAME, NGX_RTMP_MAX_ARGS);
}
