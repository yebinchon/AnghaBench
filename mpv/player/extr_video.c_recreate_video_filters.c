
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_chain {int filter; } ;
struct MPOpts {int vf_settings; } ;
struct MPContext {struct vo_chain* vo_chain; struct MPOpts* opts; } ;


 int assert (struct vo_chain*) ;
 int mp_output_chain_update_filters (int ,int ) ;

__attribute__((used)) static bool recreate_video_filters(struct MPContext *mpctx)
{
    struct MPOpts *opts = mpctx->opts;
    struct vo_chain *vo_c = mpctx->vo_chain;
    assert(vo_c);

    return mp_output_chain_update_filters(vo_c->filter, opts->vf_settings);
}
