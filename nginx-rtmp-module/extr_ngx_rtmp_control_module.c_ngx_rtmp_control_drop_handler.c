
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_3__ {int count; } ;
typedef TYPE_1__ ngx_rtmp_control_ctx_t ;
typedef int ngx_http_request_t ;


 char const* NGX_CONF_OK ;
 TYPE_1__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_rtmp_control_module ;
 int ngx_rtmp_finalize_session (int *) ;

__attribute__((used)) static const char *
ngx_rtmp_control_drop_handler(ngx_http_request_t *r, ngx_rtmp_session_t *s)
{
    ngx_rtmp_control_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_rtmp_control_module);

    ngx_rtmp_finalize_session(s);

    ++ctx->count;

    return NGX_CONF_OK;
}
