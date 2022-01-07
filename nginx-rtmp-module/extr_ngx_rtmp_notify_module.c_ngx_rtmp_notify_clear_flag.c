
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_rtmp_session_t ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ ngx_rtmp_notify_ctx_t ;


 TYPE_1__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_notify_module ;

__attribute__((used)) static void
ngx_rtmp_notify_clear_flag(ngx_rtmp_session_t *s, ngx_uint_t flag)
{
    ngx_rtmp_notify_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_notify_module);

    ctx->flags &= ~flag;
}
