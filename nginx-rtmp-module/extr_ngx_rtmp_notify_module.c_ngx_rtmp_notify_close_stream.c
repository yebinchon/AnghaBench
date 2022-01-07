
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ auto_pushed; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
struct TYPE_12__ {scalar_t__ timer_set; } ;
struct TYPE_11__ {int flags; TYPE_8__ update_evt; } ;
typedef TYPE_2__ ngx_rtmp_notify_ctx_t ;
typedef int ngx_rtmp_notify_app_conf_t ;
typedef int ngx_rtmp_close_stream_t ;
typedef int ngx_int_t ;


 int NGX_RTMP_NOTIFY_DONE ;
 int NGX_RTMP_NOTIFY_PLAYING ;
 int NGX_RTMP_NOTIFY_PLAY_DONE ;
 int NGX_RTMP_NOTIFY_PUBLISHING ;
 int NGX_RTMP_NOTIFY_PUBLISH_DONE ;
 int next_close_stream (TYPE_1__*,int *) ;
 int ngx_del_timer (TYPE_8__*) ;
 int * ngx_rtmp_get_module_app_conf (TYPE_1__*,int ) ;
 TYPE_2__* ngx_rtmp_get_module_ctx (TYPE_1__*,int ) ;
 int ngx_rtmp_notify_done (TYPE_1__*,char*,int ) ;
 int ngx_rtmp_notify_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_notify_close_stream(ngx_rtmp_session_t *s,
                             ngx_rtmp_close_stream_t *v)
{
    ngx_rtmp_notify_ctx_t *ctx;
    ngx_rtmp_notify_app_conf_t *nacf;

    if (s->auto_pushed) {
        goto next;
    }

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_notify_module);

    if (ctx == ((void*)0)) {
        goto next;
    }

    nacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_notify_module);

    if (nacf == ((void*)0)) {
        goto next;
    }

    if (ctx->flags & NGX_RTMP_NOTIFY_PUBLISHING) {
        ngx_rtmp_notify_done(s, "publish_done", NGX_RTMP_NOTIFY_PUBLISH_DONE);
    }

    if (ctx->flags & NGX_RTMP_NOTIFY_PLAYING) {
        ngx_rtmp_notify_done(s, "play_done", NGX_RTMP_NOTIFY_PLAY_DONE);
    }

    if (ctx->flags) {
        ngx_rtmp_notify_done(s, "done", NGX_RTMP_NOTIFY_DONE);
    }

    if (ctx->update_evt.timer_set) {
        ngx_del_timer(&ctx->update_evt);
    }

    ctx->flags = 0;

next:
    return next_close_stream(s, v);
}
