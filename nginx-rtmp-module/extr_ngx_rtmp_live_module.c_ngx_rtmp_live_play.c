
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_18__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_19__ {int silent; int name; scalar_t__ reset; scalar_t__ duration; scalar_t__ start; } ;
typedef TYPE_3__ ngx_rtmp_play_t ;
struct TYPE_20__ {int silent; } ;
typedef TYPE_4__ ngx_rtmp_live_ctx_t ;
struct TYPE_21__ {int play_restart; int live; } ;
typedef TYPE_5__ ngx_rtmp_live_app_conf_t ;
typedef int ngx_int_t ;
struct TYPE_17__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int next_play (TYPE_2__*,TYPE_3__*) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int ,int ,int ,int ) ;
 TYPE_5__* ngx_rtmp_get_module_app_conf (TYPE_2__*,int ) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_live_join (TYPE_2__*,int ,int ) ;
 int ngx_rtmp_live_module ;
 int ngx_rtmp_send_sample_access (TYPE_2__*) ;
 int ngx_rtmp_send_status (TYPE_2__*,char*,char*,char*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_live_play(ngx_rtmp_session_t *s, ngx_rtmp_play_t *v)
{
    ngx_rtmp_live_app_conf_t *lacf;
    ngx_rtmp_live_ctx_t *ctx;

    lacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_live_module);

    if (lacf == ((void*)0) || !lacf->live) {
        goto next;
    }

    ngx_log_debug4(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: play: name='%s' start=%uD duration=%uD reset=%d",
                   v->name, (uint32_t) v->start,
                   (uint32_t) v->duration, (uint32_t) v->reset);



    ngx_rtmp_live_join(s, v->name, 0);

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_live_module);
    if (ctx == ((void*)0)) {
        goto next;
    }

    ctx->silent = v->silent;

    if (!ctx->silent && !lacf->play_restart) {
        ngx_rtmp_send_status(s, "NetStream.Play.Start",
                             "status", "Start live");
        ngx_rtmp_send_sample_access(s);
    }

next:
    return next_play(s, v);
}
