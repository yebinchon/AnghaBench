
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a_end; int a_start; int b_end; } ;
typedef TYPE_1__ bipbuf_t ;



int bipbuf_used(const bipbuf_t* me)
{
    return (me->a_end - me->a_start) + me->b_end;
}
