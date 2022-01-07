
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ a_start; scalar_t__ a_end; } ;
typedef TYPE_1__ bipbuf_t ;



int bipbuf_is_empty(const bipbuf_t* me)
{
    return me->a_start == me->a_end;
}
