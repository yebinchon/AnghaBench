
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int finish; } ;
typedef int ENGINE_GEN_INT_FUNC_PTR ;
typedef TYPE_1__ ENGINE ;



int ENGINE_set_finish_function(ENGINE *e, ENGINE_GEN_INT_FUNC_PTR finish_f)
{
    e->finish = finish_f;
    return 1;
}
