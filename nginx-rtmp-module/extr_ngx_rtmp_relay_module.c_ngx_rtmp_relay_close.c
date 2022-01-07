
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef size_t ngx_uint_t ;
struct TYPE_19__ {scalar_t__ relay; scalar_t__ static_relay; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_16__ {int len; int data; } ;
struct TYPE_17__ {scalar_t__ timer_set; } ;
struct TYPE_20__ {struct TYPE_20__* next; TYPE_11__ name; struct TYPE_20__* publish; TYPE_10__* session; int app; struct TYPE_20__* play; TYPE_13__ push_evt; int * tag; TYPE_13__* static_evt; } ;
typedef TYPE_3__ ngx_rtmp_relay_ctx_t ;
struct TYPE_21__ {size_t nbuckets; TYPE_3__** ctx; int push_reconnect; int pull_reconnect; } ;
typedef TYPE_4__ ngx_rtmp_relay_app_conf_t ;
struct TYPE_18__ {int log; } ;
struct TYPE_15__ {TYPE_1__* connection; scalar_t__ relay; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int ngx_add_timer (TYPE_13__*,int ) ;
 int ngx_del_timer (TYPE_13__*) ;
 size_t ngx_hash_key (int ,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,TYPE_11__*) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int *,TYPE_11__*,size_t) ;
 int ngx_rtmp_finalize_session (TYPE_10__*) ;
 TYPE_4__* ngx_rtmp_get_module_app_conf (TYPE_2__*,int ) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_relay_module ;

__attribute__((used)) static void
ngx_rtmp_relay_close(ngx_rtmp_session_t *s)
{
    ngx_rtmp_relay_app_conf_t *racf;
    ngx_rtmp_relay_ctx_t *ctx, **cctx;
    ngx_uint_t hash;

    racf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_relay_module);

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_relay_module);
    if (ctx == ((void*)0)) {
        return;
    }

    if (s->static_relay) {
        ngx_add_timer(ctx->static_evt, racf->pull_reconnect);
    }

    if (ctx->publish == ((void*)0)) {
        return;
    }


    if (ctx->publish != ctx) {
        for (cctx = &ctx->publish->play; *cctx; cctx = &(*cctx)->next) {
            if (*cctx == ctx) {
                *cctx = ctx->next;
                break;
            }
        }

        ngx_log_debug2(NGX_LOG_DEBUG_RTMP, ctx->session->connection->log, 0,
                "relay: play disconnect app='%V' name='%V'",
                &ctx->app, &ctx->name);


        if (s->relay && ctx->tag == &ngx_rtmp_relay_module &&
            !ctx->publish->push_evt.timer_set)
        {
            ngx_add_timer(&ctx->publish->push_evt, racf->push_reconnect);
        }
        if (ctx->publish->play == ((void*)0) && ctx->publish->session->relay) {
            ngx_log_debug2(NGX_LOG_DEBUG_RTMP,
                 ctx->publish->session->connection->log, 0,
                "relay: publish disconnect empty app='%V' name='%V'",
                &ctx->app, &ctx->name);
            ngx_rtmp_finalize_session(ctx->publish->session);
        }

        ctx->publish = ((void*)0);

        return;
    }


    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, ctx->session->connection->log, 0,
            "relay: publish disconnect app='%V' name='%V'",
            &ctx->app, &ctx->name);

    if (ctx->push_evt.timer_set) {
        ngx_del_timer(&ctx->push_evt);
    }

    for (cctx = &ctx->play; *cctx; cctx = &(*cctx)->next) {
        (*cctx)->publish = ((void*)0);
        ngx_log_debug2(NGX_LOG_DEBUG_RTMP, (*cctx)->session->connection->log,
            0, "relay: play disconnect orphan app='%V' name='%V'",
            &(*cctx)->app, &(*cctx)->name);
        ngx_rtmp_finalize_session((*cctx)->session);
    }
    ctx->publish = ((void*)0);

    hash = ngx_hash_key(ctx->name.data, ctx->name.len);
    cctx = &racf->ctx[hash % racf->nbuckets];
    for (; *cctx && *cctx != ctx; cctx = &(*cctx)->next);
    if (*cctx) {
        *cctx = ctx->next;
    }
}
