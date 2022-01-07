
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zimg_opts {int dummy; } ;
struct mp_zimg_context {struct zimg_opts opts; TYPE_1__* opts_cache; } ;
struct TYPE_2__ {struct zimg_opts* opts; } ;


 int m_config_cache_update (TYPE_1__*) ;

__attribute__((used)) static void mp_zimg_update_from_cmdline(struct mp_zimg_context *ctx)
{
    m_config_cache_update(ctx->opts_cache);

    struct zimg_opts *opts = ctx->opts_cache->opts;
    ctx->opts = *opts;
}
