
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int framedrop_flags; scalar_t__ hwdec_request_reinit; int skip_frame; scalar_t__ intra_only; struct vd_lavc_params* opts; TYPE_2__* avctx; } ;
typedef TYPE_1__ vd_ffmpeg_ctx ;
struct vd_lavc_params {int framedrop; } ;
struct mp_filter {TYPE_1__* priv; } ;
struct TYPE_4__ {int skip_frame; } ;
typedef TYPE_2__ AVCodecContext ;


 int AVDISCARD_ALL ;
 int AVDISCARD_NONREF ;
 int reset_avctx (struct mp_filter*) ;

__attribute__((used)) static void prepare_decoding(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;
    AVCodecContext *avctx = ctx->avctx;
    struct vd_lavc_params *opts = ctx->opts;

    if (!avctx)
        return;

    int drop = ctx->framedrop_flags;
    if (drop == 1) {
        avctx->skip_frame = opts->framedrop;
    } else if (drop == 2) {
        avctx->skip_frame = AVDISCARD_NONREF;

        if (ctx->intra_only)
            avctx->skip_frame = AVDISCARD_ALL;
    } else {
        avctx->skip_frame = ctx->skip_frame;
    }

    if (ctx->hwdec_request_reinit)
        reset_avctx(vd);
}
