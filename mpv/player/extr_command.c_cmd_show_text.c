
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_cmd_ctx {TYPE_3__* args; struct MPContext* mpctx; } ;
struct MPContext {TYPE_1__* opts; } ;
struct TYPE_5__ {int i; int s; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct TYPE_4__ {int osd_duration; } ;


 int set_osd_msg (struct MPContext*,int,int,char*,int ) ;

__attribute__((used)) static void cmd_show_text(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int osd_duration = mpctx->opts->osd_duration;


    set_osd_msg(mpctx, cmd->args[2].v.i,
                (cmd->args[1].v.i < 0 ? osd_duration : cmd->args[1].v.i),
                "%s", cmd->args[0].v.s);
}
