
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_inuse; int a_start; int b_end; int size; int a_end; } ;
typedef TYPE_1__ bipbuf_t ;



int bipbuf_unused(const bipbuf_t* me)
{
    if (1 == me->b_inuse)

        return me->a_start - me->b_end;
    else
        return me->size - me->a_end;
}
