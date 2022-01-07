
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct mp_pin {scalar_t__ dir; int within_conn; int manual_connection; struct mp_pin* conn; struct mp_pin* user_conn; struct mp_pin* other; TYPE_1__ data; int data_requested; } ;


 scalar_t__ MP_PIN_IN ;
 scalar_t__ MP_PIN_OUT ;
 int add_pending (int ) ;
 int assert (int) ;
 struct mp_pin* find_connected_end (struct mp_pin*) ;

__attribute__((used)) static void init_connection(struct mp_pin *p)
{
    if (p->dir == MP_PIN_IN)
        p = p->other;

    struct mp_pin *in = find_connected_end(p);
    struct mp_pin *out = find_connected_end(p->other);


    assert(!in->user_conn);
    assert(!out->user_conn);





    if (!in->manual_connection || !out->manual_connection)
        return;

    assert(in->dir == MP_PIN_IN);
    assert(out->dir == MP_PIN_OUT);

    struct mp_pin *cur = in;
    while (cur) {
        assert(!cur->within_conn && !cur->other->within_conn);
        assert(!cur->conn && !cur->other->conn);
        assert(!cur->data_requested);
        assert(!cur->data.type);
        assert(!cur->other->data_requested);
        assert(!cur->other->data.type);
        cur->within_conn = cur->other->within_conn = 1;
        cur = cur->other->user_conn;
    }

    in->conn = out;
    in->within_conn = 0;
    out->conn = in;
    out->within_conn = 0;


    add_pending(in->manual_connection);
    add_pending(out->manual_connection);
}
