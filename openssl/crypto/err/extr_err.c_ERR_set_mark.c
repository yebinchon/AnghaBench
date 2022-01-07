
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t bottom; size_t top; int * err_flags; } ;
typedef TYPE_1__ ERR_STATE ;


 int ERR_FLAG_MARK ;
 TYPE_1__* err_get_state_int () ;

int ERR_set_mark(void)
{
    ERR_STATE *es;

    es = err_get_state_int();
    if (es == ((void*)0))
        return 0;

    if (es->bottom == es->top)
        return 0;
    es->err_flags[es->top] |= ERR_FLAG_MARK;
    return 1;
}
