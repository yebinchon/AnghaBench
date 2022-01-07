
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_cmd {int nargs; TYPE_1__* args; } ;
struct TYPE_2__ {int v; scalar_t__ type; } ;


 int m_option_free (scalar_t__,int *) ;

__attribute__((used)) static void destroy_cmd(void *ptr)
{
    struct mp_cmd *cmd = ptr;
    for (int n = 0; n < cmd->nargs; n++) {
        if (cmd->args[n].type)
            m_option_free(cmd->args[n].type, &cmd->args[n].v);
    }
}
