
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct mp_zimg_context {scalar_t__ opts_cache; } ;


 int destroy_zimg (struct mp_zimg_context*) ;
 scalar_t__ m_config_cache_alloc (struct mp_zimg_context*,struct mpv_global*,int *) ;
 int mp_zimg_update_from_cmdline (struct mp_zimg_context*) ;
 int zimg_conf ;

void mp_zimg_enable_cmdline_opts(struct mp_zimg_context *ctx,
                                 struct mpv_global *g)
{
    if (ctx->opts_cache)
        return;

    ctx->opts_cache = m_config_cache_alloc(ctx, g, &zimg_conf);
    destroy_zimg(ctx);
    mp_zimg_update_from_cmdline(ctx);
}
