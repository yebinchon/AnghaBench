
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_18__ {int silent; int name; int type; } ;
typedef TYPE_3__ ngx_rtmp_publish_t ;
struct TYPE_19__ {int silent; int publishing; } ;
typedef TYPE_4__ ngx_rtmp_live_ctx_t ;
struct TYPE_20__ {int live; } ;
typedef TYPE_5__ ngx_rtmp_live_app_conf_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int next_publish (TYPE_2__*,TYPE_3__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 TYPE_5__* ngx_rtmp_get_module_app_conf (TYPE_2__*,int ) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_live_join (TYPE_2__*,int ,int) ;
 int ngx_rtmp_live_module ;
 int ngx_rtmp_send_status (TYPE_2__*,char*,char*,char*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_live_publish(ngx_rtmp_session_t *s, ngx_rtmp_publish_t *v)
{
    ngx_rtmp_live_app_conf_t *lacf;
    ngx_rtmp_live_ctx_t *ctx;

    lacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_live_module);

    if (lacf == ((void*)0) || !lacf->live) {
        goto next;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: publish: name='%s' type='%s'",
                   v->name, v->type);



    ngx_rtmp_live_join(s, v->name, 1);

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_live_module);
    if (ctx == ((void*)0) || !ctx->publishing) {
        goto next;
    }

    ctx->silent = v->silent;

    if (!ctx->silent) {
        ngx_rtmp_send_status(s, "NetStream.Publish.Start",
                             "status", "Start publishing");
    }

next:
    return next_publish(s, v);
}
