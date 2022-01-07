
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_14__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_rtmp_session_t ;
struct TYPE_15__ {int args; int name; } ;
typedef TYPE_2__ ngx_rtmp_publish_t ;
typedef TYPE_2__ ngx_rtmp_play_t ;
struct TYPE_16__ {scalar_t__ publishing; } ;
typedef TYPE_4__ ngx_rtmp_live_ctx_t ;
struct TYPE_17__ {int count; } ;
typedef TYPE_5__ ngx_rtmp_control_ctx_t ;
typedef TYPE_2__ ngx_rtmp_close_stream_t ;
typedef int ngx_http_request_t ;


 char const* NGX_CONF_OK ;
 scalar_t__ NGX_OK ;
 scalar_t__ NGX_RTMP_MAX_NAME ;
 scalar_t__ ngx_http_arg (int *,int *,int,TYPE_1__*) ;
 TYPE_5__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_memcpy (int ,int ,scalar_t__) ;
 int ngx_memzero (TYPE_2__*,int) ;
 int ngx_rtmp_close_stream (int *,TYPE_2__*) ;
 int ngx_rtmp_cmd_fill_args (int ,int ) ;
 int ngx_rtmp_control_module ;
 TYPE_4__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_live_module ;
 scalar_t__ ngx_rtmp_play (int *,TYPE_2__*) ;
 scalar_t__ ngx_rtmp_publish (int *,TYPE_2__*) ;

__attribute__((used)) static const char *
ngx_rtmp_control_redirect_handler(ngx_http_request_t *r, ngx_rtmp_session_t *s)
{
    ngx_str_t name;
    ngx_rtmp_play_t vplay;
    ngx_rtmp_publish_t vpublish;
    ngx_rtmp_live_ctx_t *lctx;
    ngx_rtmp_control_ctx_t *ctx;
    ngx_rtmp_close_stream_t vc;

    if (ngx_http_arg(r, (u_char *) "newname", sizeof("newname") - 1, &name)
        != NGX_OK)
    {
        return "newname not specified";
    }

    if (name.len >= NGX_RTMP_MAX_NAME) {
        name.len = NGX_RTMP_MAX_NAME - 1;
    }

    ctx = ngx_http_get_module_ctx(r, ngx_rtmp_control_module);
    ctx->count++;

    ngx_memzero(&vc, sizeof(ngx_rtmp_close_stream_t));


    ngx_rtmp_close_stream(s, &vc);

    lctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_live_module);

    if (lctx && lctx->publishing) {


        ngx_memzero(&vpublish, sizeof(ngx_rtmp_publish_t));

        ngx_memcpy(vpublish.name, name.data, name.len);

        ngx_rtmp_cmd_fill_args(vpublish.name, vpublish.args);

        if (ngx_rtmp_publish(s, &vpublish) != NGX_OK) {
            return "publish failed";
        }

    } else {


        ngx_memzero(&vplay, sizeof(ngx_rtmp_play_t));

        ngx_memcpy(vplay.name, name.data, name.len);

        ngx_rtmp_cmd_fill_args(vplay.name, vplay.args);

        if (ngx_rtmp_play(s, &vplay) != NGX_OK) {
            return "play failed";
        }
    }

    return NGX_CONF_OK;
}
