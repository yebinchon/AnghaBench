
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_cmd_ctx {int on_osd; struct MPContext* mpctx; } ;
struct MPContext {TYPE_1__* opts; int demuxer; } ;
struct TYPE_2__ {int * ab_loop; } ;


 int M_PROPERTY_SET ;
 double demux_probe_cache_dump_target (int ,int ,int) ;
 int mp_property_do (char*,int ,double*,struct MPContext*) ;
 int show_property_osd (struct MPContext*,char*,int ) ;

__attribute__((used)) static void cmd_align_cache_ab(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    if (!mpctx->demuxer)
        return;

    double a = demux_probe_cache_dump_target(mpctx->demuxer,
                                             mpctx->opts->ab_loop[0], 0);
    double b = demux_probe_cache_dump_target(mpctx->demuxer,
                                             mpctx->opts->ab_loop[1], 1);

    mp_property_do("ab-loop-a", M_PROPERTY_SET, &a, mpctx);
    mp_property_do("ab-loop-b", M_PROPERTY_SET, &b, mpctx);


    show_property_osd(mpctx, "ab-loop-b", cmd->on_osd);
}
