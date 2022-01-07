
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ funct_ref; int (* init ) (TYPE_1__*) ;int struct_ref; } ;
typedef TYPE_1__ ENGINE ;


 int engine_ref_debug (TYPE_1__*,int,int) ;
 int stub1 (TYPE_1__*) ;

int engine_unlocked_init(ENGINE *e)
{
    int to_return = 1;

    if ((e->funct_ref == 0) && e->init)




        to_return = e->init(e);
    if (to_return) {




        e->struct_ref++;
        e->funct_ref++;
        engine_ref_debug(e, 0, 1);
        engine_ref_debug(e, 1, 1);
    }
    return to_return;
}
