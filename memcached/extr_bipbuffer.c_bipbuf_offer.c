
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b_inuse; scalar_t__ a_end; scalar_t__ data; scalar_t__ b_end; } ;
typedef TYPE_1__ bipbuf_t ;


 int __check_for_switch_to_b (TYPE_1__*) ;
 int const bipbuf_unused (TYPE_1__*) ;
 int memcpy (scalar_t__,unsigned char const*,int const) ;

int bipbuf_offer(bipbuf_t* me, const unsigned char *data, const int size)
{

    if (bipbuf_unused(me) < size)
        return 0;

    if (1 == me->b_inuse)
    {
        memcpy(me->data + me->b_end, data, size);
        me->b_end += size;
    }
    else
    {
        memcpy(me->data + me->a_end, data, size);
        me->a_end += size;
    }

    __check_for_switch_to_b(me);
    return size;
}
