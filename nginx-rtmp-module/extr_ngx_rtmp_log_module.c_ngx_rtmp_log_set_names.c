
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_12__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_13__ {int args; int name; } ;
typedef TYPE_3__ ngx_rtmp_log_ctx_t ;
struct TYPE_11__ {int pool; } ;


 int NGX_RTMP_MAX_ARGS ;
 int NGX_RTMP_MAX_NAME ;
 int ngx_memcpy (int ,int *,int ) ;
 TYPE_3__* ngx_pcalloc (int ,int) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_log_module ;
 int ngx_rtmp_set_ctx (TYPE_2__*,TYPE_3__*,int ) ;

__attribute__((used)) static ngx_rtmp_log_ctx_t *
ngx_rtmp_log_set_names(ngx_rtmp_session_t *s, u_char *name, u_char *args)
{
    ngx_rtmp_log_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_log_module);
    if (ctx == ((void*)0)) {
        ctx = ngx_pcalloc(s->connection->pool, sizeof(ngx_rtmp_log_ctx_t));
        if (ctx == ((void*)0)) {
            return ((void*)0);
        }

        ngx_rtmp_set_ctx(s, ctx, ngx_rtmp_log_module);
    }

    ngx_memcpy(ctx->name, name, NGX_RTMP_MAX_NAME);
    ngx_memcpy(ctx->args, args, NGX_RTMP_MAX_ARGS);

    return ctx;
}
