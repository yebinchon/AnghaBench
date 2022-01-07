
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ a_end; scalar_t__ a_start; scalar_t__ b_end; int b_inuse; } ;
typedef TYPE_1__ bipbuf_t ;



__attribute__((used)) static void __check_for_switch_to_b(bipbuf_t* me)
{
    if (me->size - me->a_end < me->a_start - me->b_end)
        me->b_inuse = 1;
}
