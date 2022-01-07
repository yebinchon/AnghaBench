
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* method_name; } ;
struct TYPE_5__ {int framedrop_flags; TYPE_3__* avctx; int use_hwdec; TYPE_1__ hwdec; } ;
typedef TYPE_2__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_2__* priv; } ;
typedef enum dec_ctrl { ____Placeholder_dec_ctrl } dec_ctrl ;
struct TYPE_6__ {int has_b_frames; } ;
typedef TYPE_3__ AVCodecContext ;


 int CONTROL_ERROR ;
 int CONTROL_FALSE ;
 int CONTROL_OK ;
 int CONTROL_TRUE ;
 int CONTROL_UNKNOWN ;





 int force_fallback (struct mp_filter*) ;
 int reinit (struct mp_filter*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int control(struct mp_filter *vd, enum dec_ctrl cmd, void *arg)
{
    vd_ffmpeg_ctx *ctx = vd->priv;
    switch (cmd) {
    case 128:
        ctx->framedrop_flags = *(int *)arg;
        return CONTROL_TRUE;
    case 131: {
        AVCodecContext *avctx = ctx->avctx;
        if (!avctx)
            break;
        if (ctx->use_hwdec && strcmp(ctx->hwdec.method_name, "mmal") == 0)
            break;
        *(int *)arg = avctx->has_b_frames;
        return CONTROL_TRUE;
    }
    case 130: {
        *(char **)arg = ctx->use_hwdec ? ctx->hwdec.method_name : ((void*)0);
        return CONTROL_TRUE;
    }
    case 132:
        if (ctx->use_hwdec) {
            force_fallback(vd);
            return ctx->avctx ? CONTROL_OK : CONTROL_ERROR;
        }
        return CONTROL_FALSE;
    case 129:
        reinit(vd);
        return CONTROL_TRUE;
    }
    return CONTROL_UNKNOWN;
}
