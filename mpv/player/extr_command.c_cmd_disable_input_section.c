
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_cmd_ctx {TYPE_2__* args; struct MPContext* mpctx; } ;
struct MPContext {int input; } ;
struct TYPE_3__ {int s; } ;
struct TYPE_4__ {TYPE_1__ v; } ;


 int mp_input_disable_section (int ,int ) ;

__attribute__((used)) static void cmd_disable_input_section(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    mp_input_disable_section(mpctx->input, cmd->args[0].v.s);
}
