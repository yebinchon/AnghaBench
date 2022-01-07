
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_sws_context {scalar_t__ flags; scalar_t__ brightness; scalar_t__ contrast; scalar_t__ saturation; scalar_t__ allow_zimg; int opts_cache; int dst; int src; scalar_t__ force_reload; struct mp_sws_context* cached; } ;


 int m_config_cache_update (int ) ;
 scalar_t__ mp_image_params_equal (int *,int *) ;

__attribute__((used)) static bool cache_valid(struct mp_sws_context *ctx)
{
    struct mp_sws_context *old = ctx->cached;
    if (ctx->force_reload)
        return 0;
    return mp_image_params_equal(&ctx->src, &old->src) &&
           mp_image_params_equal(&ctx->dst, &old->dst) &&
           ctx->flags == old->flags &&
           ctx->brightness == old->brightness &&
           ctx->contrast == old->contrast &&
           ctx->saturation == old->saturation &&
           ctx->allow_zimg == old->allow_zimg &&
           (!ctx->opts_cache || !m_config_cache_update(ctx->opts_cache));
}
