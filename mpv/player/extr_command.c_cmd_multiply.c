
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_cmd_ctx {TYPE_2__* args; } ;
struct TYPE_3__ {int d; int s; } ;
struct TYPE_4__ {TYPE_1__ v; } ;


 int M_PROPERTY_MULTIPLY ;
 int change_property_cmd (struct mp_cmd_ctx*,int ,int ,int *) ;

__attribute__((used)) static void cmd_multiply(void *p)
{
    struct mp_cmd_ctx *cmd = p;

    change_property_cmd(cmd, cmd->args[0].v.s,
                        M_PROPERTY_MULTIPLY, &cmd->args[1].v.d);
}
