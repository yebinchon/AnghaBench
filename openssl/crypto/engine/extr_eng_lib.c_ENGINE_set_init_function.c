
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int init; } ;
typedef int ENGINE_GEN_INT_FUNC_PTR ;
typedef TYPE_1__ ENGINE ;



int ENGINE_set_init_function(ENGINE *e, ENGINE_GEN_INT_FUNC_PTR init_f)
{
    e->init = init_f;
    return 1;
}
