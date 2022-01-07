
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_11__ {scalar_t__ opened; int file; int frag; } ;
typedef TYPE_3__ ngx_rtmp_hls_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_hls_module ;
 int ngx_rtmp_hls_next_frag (TYPE_2__*) ;
 int ngx_rtmp_hls_write_playlist (TYPE_2__*) ;
 int ngx_rtmp_mpegts_close_file (int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_hls_close_fragment(ngx_rtmp_session_t *s)
{
    ngx_rtmp_hls_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_hls_module);
    if (ctx == ((void*)0) || !ctx->opened) {
        return NGX_OK;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "hls: close fragment n=%uL", ctx->frag);

    ngx_rtmp_mpegts_close_file(&ctx->file);

    ctx->opened = 0;

    ngx_rtmp_hls_next_frag(s);

    ngx_rtmp_hls_write_playlist(s);

    return NGX_OK;
}
