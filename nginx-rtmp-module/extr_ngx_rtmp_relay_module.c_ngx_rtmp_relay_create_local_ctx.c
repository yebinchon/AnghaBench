
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_14__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_relay_target_t ;
struct TYPE_12__ {int handler; int log; TYPE_3__* data; } ;
struct TYPE_15__ {int name; scalar_t__ publish; TYPE_1__ push_evt; TYPE_3__* session; } ;
typedef TYPE_4__ ngx_rtmp_relay_ctx_t ;
struct TYPE_13__ {int pool; int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 scalar_t__ ngx_rtmp_relay_copy_str (int ,int *,int *) ;
 int ngx_rtmp_relay_module ;
 int ngx_rtmp_relay_push_reconnect ;
 int ngx_rtmp_set_ctx (TYPE_3__*,TYPE_4__*,int ) ;

__attribute__((used)) static ngx_rtmp_relay_ctx_t *
ngx_rtmp_relay_create_local_ctx(ngx_rtmp_session_t *s, ngx_str_t *name,
        ngx_rtmp_relay_target_t *target)
{
    ngx_rtmp_relay_ctx_t *ctx;

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "relay: create local context");

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_relay_module);
    if (ctx == ((void*)0)) {
        ctx = ngx_pcalloc(s->connection->pool, sizeof(ngx_rtmp_relay_ctx_t));
        if (ctx == ((void*)0)) {
            return ((void*)0);
        }
        ngx_rtmp_set_ctx(s, ctx, ngx_rtmp_relay_module);
    }
    ctx->session = s;

    ctx->push_evt.data = s;
    ctx->push_evt.log = s->connection->log;
    ctx->push_evt.handler = ngx_rtmp_relay_push_reconnect;

    if (ctx->publish) {
        return ((void*)0);
    }

    if (ngx_rtmp_relay_copy_str(s->connection->pool, &ctx->name, name)
            != NGX_OK)
    {
        return ((void*)0);
    }

    return ctx;
}
