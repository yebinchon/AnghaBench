
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* cmd_defns; } ;
typedef int ENGINE_CMD_DEFN ;
typedef TYPE_1__ ENGINE ;



int ENGINE_set_cmd_defns(ENGINE *e, const ENGINE_CMD_DEFN *defns)
{
    e->cmd_defns = defns;
    return 1;
}
