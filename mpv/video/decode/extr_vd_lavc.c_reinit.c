
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_hwdec; int avctx; } ;
typedef TYPE_1__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_1__* priv; } ;


 int force_fallback (struct mp_filter*) ;
 int init_avctx (struct mp_filter*) ;
 int select_and_set_hwdec (struct mp_filter*) ;
 int uninit_avctx (struct mp_filter*) ;

__attribute__((used)) static void reinit(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;

    uninit_avctx(vd);

    select_and_set_hwdec(vd);

    bool use_hwdec = ctx->use_hwdec;
    init_avctx(vd);
    if (!ctx->avctx && use_hwdec)
        force_fallback(vd);
}
