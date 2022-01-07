
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_frame {int dummy; } ;
struct mp_pin {scalar_t__ dir; struct mp_frame data; int data_requested; TYPE_1__* conn; int within_conn; } ;
struct TYPE_2__ {scalar_t__ manual_connection; } ;


 scalar_t__ MP_PIN_OUT ;
 int assert (int) ;
 int mp_pin_out_has_data (struct mp_pin*) ;

void mp_pin_out_unread(struct mp_pin *p, struct mp_frame frame)
{
    assert(p->dir == MP_PIN_OUT);
    assert(!p->within_conn);
    assert(p->conn && p->conn->manual_connection);


    assert(!mp_pin_out_has_data(p));
    assert(!p->data_requested);
    p->data = frame;
}
