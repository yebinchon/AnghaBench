
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flushing; int hwdec_request_reinit; scalar_t__ avctx; } ;
typedef TYPE_1__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_1__* priv; } ;


 int avcodec_flush_buffers (scalar_t__) ;
 scalar_t__ avcodec_is_open (scalar_t__) ;

__attribute__((used)) static void reset_avctx(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;

    if (ctx->avctx && avcodec_is_open(ctx->avctx))
        avcodec_flush_buffers(ctx->avctx);
    ctx->flushing = 0;
    ctx->hwdec_request_reinit = 0;
}
