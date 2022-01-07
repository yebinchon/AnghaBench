
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctrl; } ;
typedef int ENGINE_CTRL_FUNC_PTR ;
typedef TYPE_1__ ENGINE ;



ENGINE_CTRL_FUNC_PTR ENGINE_get_ctrl_function(const ENGINE *e)
{
    return e->ctrl;
}
