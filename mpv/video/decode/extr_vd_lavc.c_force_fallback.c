
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hwdec_notified; } ;
typedef TYPE_1__ vd_ffmpeg_ctx ;
struct mp_filter {int log; TYPE_1__* priv; } ;


 int MSGL_V ;
 int MSGL_WARN ;
 int init_avctx (struct mp_filter*) ;
 int mp_msg (int ,int,char*) ;
 int uninit_avctx (struct mp_filter*) ;

__attribute__((used)) static void force_fallback(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;

    uninit_avctx(vd);
    int lev = ctx->hwdec_notified ? MSGL_WARN : MSGL_V;
    mp_msg(vd->log, lev, "Falling back to software decoding.\n");
    init_avctx(vd);
}
