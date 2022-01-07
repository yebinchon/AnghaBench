
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_cmd_def {TYPE_1__* args; scalar_t__ vararg; } ;
struct TYPE_2__ {int type; } ;


 int MP_CMD_DEF_MAX_ARGS ;

__attribute__((used)) static bool is_vararg(const struct mp_cmd_def *m, int i)
{
    return m->vararg && (i + 1 >= MP_CMD_DEF_MAX_ARGS || !m->args[i + 1].type);
}
