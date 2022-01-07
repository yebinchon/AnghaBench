
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_20__ {TYPE_1__* connection; } ;
typedef TYPE_5__ ngx_rtmp_session_t ;
struct TYPE_21__ {TYPE_3__* conf; } ;
typedef TYPE_6__ ngx_rtmp_record_rec_ctx_t ;
struct TYPE_17__ {scalar_t__ nelts; TYPE_6__* elts; } ;
struct TYPE_22__ {TYPE_2__ rec; } ;
typedef TYPE_7__ ngx_rtmp_record_ctx_t ;
struct TYPE_19__ {scalar_t__ nelts; } ;
struct TYPE_23__ {TYPE_4__ rec; } ;
typedef TYPE_8__ ngx_rtmp_record_app_conf_t ;
struct TYPE_18__ {int flags; } ;
struct TYPE_16__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_RTMP_RECORD_MANUAL ;
 int NGX_RTMP_RECORD_OFF ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_8__* ngx_rtmp_get_module_app_conf (TYPE_5__*,int ) ;
 TYPE_7__* ngx_rtmp_get_module_ctx (TYPE_5__*,int ) ;
 int ngx_rtmp_record_module ;
 int ngx_rtmp_record_node_open (TYPE_5__*,TYPE_6__*) ;

__attribute__((used)) static void
ngx_rtmp_record_start(ngx_rtmp_session_t *s)
{
    ngx_rtmp_record_app_conf_t *racf;
    ngx_rtmp_record_rec_ctx_t *rctx;
    ngx_rtmp_record_ctx_t *ctx;
    ngx_uint_t n;

    racf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_record_module);
    if (racf == ((void*)0) || racf->rec.nelts == 0) {
        return;
    }

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_record_module);
    if (ctx == ((void*)0)) {
        return;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "record: start");

    rctx = ctx->rec.elts;
    for (n = 0; n < ctx->rec.nelts; ++n, ++rctx) {
        if (rctx->conf->flags & (NGX_RTMP_RECORD_OFF|NGX_RTMP_RECORD_MANUAL)) {
            continue;
        }
        ngx_rtmp_record_node_open(s, rctx);
    }
}
