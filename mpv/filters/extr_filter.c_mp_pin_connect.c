
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_pin {scalar_t__ dir; struct mp_pin* user_conn; } ;


 scalar_t__ MP_PIN_IN ;
 scalar_t__ MP_PIN_OUT ;
 int assert (int) ;
 int init_connection (struct mp_pin*) ;
 int mp_pin_disconnect (struct mp_pin*) ;

void mp_pin_connect(struct mp_pin *dst, struct mp_pin *src)
{
    assert(src->dir == MP_PIN_OUT);
    assert(dst->dir == MP_PIN_IN);

    if (dst->user_conn == src) {
        assert(src->user_conn == dst);
        return;
    }

    mp_pin_disconnect(src);
    mp_pin_disconnect(dst);

    src->user_conn = dst;
    dst->user_conn = src;

    init_connection(src);
}
