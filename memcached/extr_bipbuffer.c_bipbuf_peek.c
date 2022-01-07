
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; scalar_t__ a_start; scalar_t__ data; } ;
typedef TYPE_1__ bipbuf_t ;


 scalar_t__ bipbuf_is_empty (TYPE_1__ const*) ;

unsigned char *bipbuf_peek(const bipbuf_t* me, const unsigned int size)
{

    if (me->size < me->a_start + size)
        return ((void*)0);

    if (bipbuf_is_empty(me))
        return ((void*)0);

    return (unsigned char *)me->data + me->a_start;
}
