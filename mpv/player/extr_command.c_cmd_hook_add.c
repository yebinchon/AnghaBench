
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_cmd_ctx {int success; TYPE_2__* args; TYPE_3__* cmd; struct MPContext* mpctx; } ;
struct MPContext {int dummy; } ;
struct TYPE_6__ {int sender; } ;
struct TYPE_4__ {int i; int s; } ;
struct TYPE_5__ {TYPE_1__ v; } ;


 int MP_ERR (struct MPContext*,char*) ;
 int mp_hook_add (struct MPContext*,int ,int ,int ,int ,int) ;

__attribute__((used)) static void cmd_hook_add(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    if (!cmd->cmd->sender) {
        MP_ERR(mpctx, "Can be used from client API only.\n");
        cmd->success = 0;
        return;
    }
    mp_hook_add(mpctx, cmd->cmd->sender, cmd->args[0].v.s, cmd->args[1].v.i,
                cmd->args[2].v.i, 1);
}
