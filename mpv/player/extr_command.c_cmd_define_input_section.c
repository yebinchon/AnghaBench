
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_cmd_ctx {TYPE_1__* cmd; TYPE_3__* args; struct MPContext* mpctx; } ;
struct MPContext {int input; } ;
struct TYPE_5__ {int i; int s; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct TYPE_4__ {int sender; } ;


 int mp_input_define_section (int ,int ,char*,int ,int,int ) ;

__attribute__((used)) static void cmd_define_input_section(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    mp_input_define_section(mpctx->input, cmd->args[0].v.s, "<api>",
                            cmd->args[1].v.s, !cmd->args[2].v.i,
                            cmd->cmd->sender);
}
