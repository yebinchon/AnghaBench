
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_sws_context {int flags; int force_reload; int src_filter; } ;
struct mp_image {int dummy; } ;


 int SWS_LANCZOS ;
 struct mp_sws_context* mp_sws_alloc (int *) ;
 int mp_sws_hq_flags ;
 int mp_sws_scale (struct mp_sws_context*,struct mp_image*,struct mp_image*) ;
 int sws_getDefaultFilter (float,float,int ,int ,int ,int ,int ) ;
 int talloc_free (struct mp_sws_context*) ;

int mp_image_sw_blur_scale(struct mp_image *dst, struct mp_image *src,
                           float gblur)
{
    struct mp_sws_context *ctx = mp_sws_alloc(((void*)0));
    ctx->flags = SWS_LANCZOS | mp_sws_hq_flags;
    ctx->src_filter = sws_getDefaultFilter(gblur, gblur, 0, 0, 0, 0, 0);
    ctx->force_reload = 1;
    int res = mp_sws_scale(ctx, dst, src);
    talloc_free(ctx);
    return res;
}
