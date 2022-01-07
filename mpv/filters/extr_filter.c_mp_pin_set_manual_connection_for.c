
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_pin {struct mp_filter* manual_connection; scalar_t__ within_conn; } ;
struct mp_filter {int dummy; } ;


 int init_connection (struct mp_pin*) ;
 int mp_pin_disconnect (struct mp_pin*) ;

void mp_pin_set_manual_connection_for(struct mp_pin *p, struct mp_filter *f)
{
    if (p->manual_connection == f)
        return;
    if (p->within_conn)
        mp_pin_disconnect(p);
    p->manual_connection = f;
    init_connection(p);
}
