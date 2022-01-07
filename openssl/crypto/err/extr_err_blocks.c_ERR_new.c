
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int top; } ;
typedef TYPE_1__ ERR_STATE ;


 int err_clear (TYPE_1__*,int ,int ) ;
 int err_get_slot (TYPE_1__*) ;
 TYPE_1__* err_get_state_int () ;

void ERR_new(void)
{
    ERR_STATE *es;

    es = err_get_state_int();
    if (es == ((void*)0))
        return;


    err_get_slot(es);
    err_clear(es, es->top, 0);
}
