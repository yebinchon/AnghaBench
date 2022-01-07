
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; int bottom; int* err_flags; } ;
typedef TYPE_1__ ERR_STATE ;


 int ERR_FLAG_MARK ;
 int ERR_NUM_ERRORS ;
 TYPE_1__* err_get_state_int () ;

int ERR_clear_last_mark(void)
{
    ERR_STATE *es;
    int top;

    es = err_get_state_int();
    if (es == ((void*)0))
        return 0;

    top = es->top;
    while (es->bottom != top
           && (es->err_flags[top] & ERR_FLAG_MARK) == 0) {
        top = top > 0 ? top - 1 : ERR_NUM_ERRORS - 1;
    }

    if (es->bottom == top)
        return 0;
    es->err_flags[top] &= ~ERR_FLAG_MARK;
    return 1;
}
