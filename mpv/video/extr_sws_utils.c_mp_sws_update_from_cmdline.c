
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sws_opts {int zimg; scalar_t__ bitexact; int fast; int scaler; int chr_vshift; int chr_hshift; int chr_sharpen; int lum_sharpen; int chr_gblur; int lum_gblur; } ;
struct mp_sws_context {int force_reload; int allow_zimg; int flags; int src_filter; TYPE_1__* opts_cache; } ;
struct TYPE_2__ {struct sws_opts* opts; } ;


 int SWS_BITEXACT ;
 int SWS_PRINT_INFO ;
 int m_config_cache_update (TYPE_1__*) ;
 int mp_sws_hq_flags ;
 int sws_freeFilter (int ) ;
 int sws_getDefaultFilter (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void mp_sws_update_from_cmdline(struct mp_sws_context *ctx)
{
    m_config_cache_update(ctx->opts_cache);
    struct sws_opts *opts = ctx->opts_cache->opts;

    sws_freeFilter(ctx->src_filter);
    ctx->src_filter = sws_getDefaultFilter(opts->lum_gblur, opts->chr_gblur,
                                           opts->lum_sharpen, opts->chr_sharpen,
                                           opts->chr_hshift, opts->chr_vshift, 0);
    ctx->force_reload = 1;

    ctx->flags = SWS_PRINT_INFO;
    ctx->flags |= opts->scaler;
    if (!opts->fast)
        ctx->flags |= mp_sws_hq_flags;
    if (opts->bitexact)
        ctx->flags |= SWS_BITEXACT;

    ctx->allow_zimg = opts->zimg;
}
