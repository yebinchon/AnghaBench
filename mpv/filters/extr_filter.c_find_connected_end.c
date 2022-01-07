
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_pin {struct mp_pin* user_conn; struct mp_pin* other; } ;


 int assert (int ) ;

__attribute__((used)) static struct mp_pin *find_connected_end(struct mp_pin *p)
{
    while (1) {
        struct mp_pin *other = p->other;
        if (!other->user_conn)
            return other;
        p = other->user_conn;
    }
    assert(0);
}
