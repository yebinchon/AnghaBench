
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int avframe; int avctx; } ;
struct mp_filter {struct priv* priv; } ;


 int av_frame_free (int *) ;
 int avcodec_free_context (int *) ;

__attribute__((used)) static void destroy(struct mp_filter *da)
{
    struct priv *ctx = da->priv;

    avcodec_free_context(&ctx->avctx);
    av_frame_free(&ctx->avframe);
}
