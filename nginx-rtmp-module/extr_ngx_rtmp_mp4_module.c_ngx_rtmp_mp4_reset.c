
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
typedef int ngx_rtmp_session_t ;
struct TYPE_6__ {scalar_t__ not_first; } ;
struct TYPE_5__ {TYPE_2__ cursor; } ;
typedef TYPE_1__ ngx_rtmp_mp4_track_t ;
typedef TYPE_2__ ngx_rtmp_mp4_cursor_t ;
struct TYPE_7__ {scalar_t__ ntracks; TYPE_1__* tracks; } ;
typedef TYPE_3__ ngx_rtmp_mp4_ctx_t ;
typedef int ngx_int_t ;


 int NGX_OK ;
 TYPE_3__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_mp4_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_reset(ngx_rtmp_session_t *s)
{
    ngx_rtmp_mp4_ctx_t *ctx;
    ngx_rtmp_mp4_cursor_t *cr;
    ngx_rtmp_mp4_track_t *t;
    ngx_uint_t n;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_mp4_module);

    if (ctx == ((void*)0)) {
        return NGX_OK;
    }

    t = &ctx->tracks[0];
    for (n = 0; n < ctx->ntracks; ++n, ++t) {
        cr = &t->cursor;
        cr->not_first = 0;
    }

    return NGX_OK;
}
