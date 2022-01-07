
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct mp_sws_context {int force_reload; int zimg; scalar_t__ opts_cache; } ;


 scalar_t__ m_config_cache_alloc (struct mp_sws_context*,struct mpv_global*,int *) ;
 int mp_sws_update_from_cmdline (struct mp_sws_context*) ;
 int mp_zimg_enable_cmdline_opts (int ,struct mpv_global*) ;
 int sws_conf ;

void mp_sws_enable_cmdline_opts(struct mp_sws_context *ctx, struct mpv_global *g)
{
    if (ctx->opts_cache)
        return;

    ctx->opts_cache = m_config_cache_alloc(ctx, g, &sws_conf);
    ctx->force_reload = 1;
    mp_sws_update_from_cmdline(ctx);




}
