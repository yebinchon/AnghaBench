
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_19__ ;
typedef struct TYPE_20__ TYPE_12__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_26__ {TYPE_3__* connection; } ;
typedef TYPE_5__ ngx_rtmp_session_t ;
struct TYPE_25__ {int url; } ;
struct TYPE_23__ {scalar_t__ len; int data; } ;
struct TYPE_27__ {TYPE_4__ url; int play_path; int app; TYPE_2__ name; } ;
typedef TYPE_6__ ngx_rtmp_relay_target_t ;
struct TYPE_21__ {int timer_set; } ;
struct TYPE_20__ {scalar_t__ len; int data; } ;
struct TYPE_28__ {TYPE_19__ push_evt; TYPE_12__ name; TYPE_6__* data; int * tag; struct TYPE_28__* next; struct TYPE_28__* play; } ;
typedef TYPE_7__ ngx_rtmp_relay_ctx_t ;
struct TYPE_22__ {scalar_t__ nelts; TYPE_6__** elts; } ;
struct TYPE_29__ {int push_reconnect; TYPE_1__ pushes; } ;
typedef TYPE_8__ ngx_rtmp_relay_app_conf_t ;
struct TYPE_30__ {TYPE_5__* data; } ;
typedef TYPE_9__ ngx_event_t ;
struct TYPE_24__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_19__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_12__*,int *,int *,int *) ;
 scalar_t__ ngx_memcmp (int ,int ,scalar_t__) ;
 TYPE_8__* ngx_rtmp_get_module_app_conf (TYPE_5__*,int ) ;
 TYPE_7__* ngx_rtmp_get_module_ctx (TYPE_5__*,int ) ;
 int ngx_rtmp_relay_module ;
 scalar_t__ ngx_rtmp_relay_push (TYPE_5__*,TYPE_12__*,TYPE_6__*) ;

__attribute__((used)) static void
ngx_rtmp_relay_push_reconnect(ngx_event_t *ev)
{
    ngx_rtmp_session_t *s = ev->data;

    ngx_rtmp_relay_app_conf_t *racf;
    ngx_rtmp_relay_ctx_t *ctx, *pctx;
    ngx_uint_t n;
    ngx_rtmp_relay_target_t *target, **t;

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "relay: push reconnect");

    racf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_relay_module);

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_relay_module);
    if (ctx == ((void*)0)) {
        return;
    }

    t = racf->pushes.elts;
    for (n = 0; n < racf->pushes.nelts; ++n, ++t) {
        target = *t;

        if (target->name.len && (ctx->name.len != target->name.len ||
            ngx_memcmp(ctx->name.data, target->name.data, ctx->name.len)))
        {
            continue;
        }

        for (pctx = ctx->play; pctx; pctx = pctx->next) {
            if (pctx->tag == &ngx_rtmp_relay_module &&
                pctx->data == target)
            {
                break;
            }
        }

        if (pctx) {
            continue;
        }

        if (ngx_rtmp_relay_push(s, &ctx->name, target) == NGX_OK) {
            continue;
        }

        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                "relay: push reconnect failed name='%V' app='%V' "
                "playpath='%V' url='%V'",
                &ctx->name, &target->app, &target->play_path,
                &target->url.url);

        if (!ctx->push_evt.timer_set) {
            ngx_add_timer(&ctx->push_evt, racf->push_reconnect);
        }
    }
}
