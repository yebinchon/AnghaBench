
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_inuse; int b_end; int a_end; scalar_t__ data; } ;
typedef TYPE_1__ bipbuf_t ;


 int const bipbuf_unused (TYPE_1__*) ;

unsigned char *bipbuf_request(bipbuf_t* me, const int size)
{
    if (bipbuf_unused(me) < size)
        return 0;
    if (1 == me->b_inuse)
    {
        return (unsigned char *)me->data + me->b_end;
    }
    else
    {
        return (unsigned char *)me->data + me->a_end;
    }
}
