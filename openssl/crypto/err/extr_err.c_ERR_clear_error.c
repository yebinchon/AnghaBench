
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bottom; scalar_t__ top; } ;
typedef TYPE_1__ ERR_STATE ;


 int ERR_NUM_ERRORS ;
 int err_clear (TYPE_1__*,int,int ) ;
 TYPE_1__* err_get_state_int () ;

void ERR_clear_error(void)
{
    int i;
    ERR_STATE *es;

    es = err_get_state_int();
    if (es == ((void*)0))
        return;

    for (i = 0; i < ERR_NUM_ERRORS; i++) {
        err_clear(es, i, 0);
    }
    es->top = es->bottom = 0;
}
