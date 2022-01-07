
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_cmd_ctx {int success; int msg_osd; TYPE_2__* args; scalar_t__ priv; struct MPContext* mpctx; } ;
struct MPContext {int dummy; } ;
struct TYPE_3__ {int s; } ;
struct TYPE_4__ {TYPE_1__ v; } ;


 scalar_t__ edit_filters_osd (struct MPContext*,int,int ,int ,int ) ;

__attribute__((used)) static void cmd_filter(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int type = *(int *)cmd->priv;
    cmd->success = edit_filters_osd(mpctx, type, cmd->args[0].v.s,
                                    cmd->args[1].v.s, cmd->msg_osd) >= 0;
}
