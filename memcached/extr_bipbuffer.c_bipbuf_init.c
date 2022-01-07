
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int size; scalar_t__ b_inuse; scalar_t__ b_end; scalar_t__ a_end; scalar_t__ a_start; } ;
typedef TYPE_1__ bipbuf_t ;



void bipbuf_init(bipbuf_t* me, const unsigned int size)
{
    me->a_start = me->a_end = me->b_end = 0;
    me->size = size;
    me->b_inuse = 0;
}
