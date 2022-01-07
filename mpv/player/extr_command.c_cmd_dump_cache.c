
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_cmd_ctx {TYPE_2__* args; } ;
struct TYPE_3__ {int s; int d; } ;
struct TYPE_4__ {TYPE_1__ v; } ;


 int run_dump_cmd (struct mp_cmd_ctx*,int ,int ,int ) ;

__attribute__((used)) static void cmd_dump_cache(void *p)
{
    struct mp_cmd_ctx *cmd = p;

    run_dump_cmd(cmd, cmd->args[0].v.d, cmd->args[1].v.d, cmd->args[2].v.s);
}
