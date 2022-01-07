
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mp_sws_context {int sws; int zimg; scalar_t__ zimg_ok; int dst; int src; } ;
struct mp_image {int stride; scalar_t__ planes; int h; int params; } ;


 int MP_ERR (struct mp_sws_context*,char*) ;
 int mp_sws_reinit (struct mp_sws_context*) ;
 scalar_t__ mp_zimg_convert (int ,struct mp_image*,struct mp_image*) ;
 int sws_scale (int ,int const* const*,int ,int ,int ,scalar_t__,int ) ;

int mp_sws_scale(struct mp_sws_context *ctx, struct mp_image *dst,
                 struct mp_image *src)
{
    ctx->src = src->params;
    ctx->dst = dst->params;

    int r = mp_sws_reinit(ctx);
    if (r < 0) {
        MP_ERR(ctx, "libswscale initialization failed.\n");
        return r;
    }






    sws_scale(ctx->sws, (const uint8_t *const *) src->planes, src->stride,
              0, src->h, dst->planes, dst->stride);
    return 0;
}
