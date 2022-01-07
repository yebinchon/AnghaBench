
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct mp_pin {scalar_t__ dir; int within_conn; int data_requested; struct mp_pin* user_conn; struct mp_pin* other; TYPE_1__ data; int owner; int * conn; } ;


 scalar_t__ MP_PIN_OUT ;
 int MP_VERBOSE (int ,char*) ;
 int assert (int) ;
 struct mp_pin* find_connected_end (struct mp_pin*) ;
 int mp_frame_unref (TYPE_1__*) ;

__attribute__((used)) static void deinit_connection(struct mp_pin *p)
{
    if (p->dir == MP_PIN_OUT)
        p = p->other;

    p = find_connected_end(p);

    while (p) {
        p->conn = p->other->conn = ((void*)0);
        p->within_conn = p->other->within_conn = 0;
        assert(!p->other->data_requested);
        assert(!p->other->data.type);
        p->data_requested = 0;
        if (p->data.type)
            MP_VERBOSE(p->owner, "dropping frame due to pin disconnect\n");
        if (p->data_requested)
            MP_VERBOSE(p->owner, "dropping request due to pin disconnect\n");
        mp_frame_unref(&p->data);
        p = p->other->user_conn;
    }
}
