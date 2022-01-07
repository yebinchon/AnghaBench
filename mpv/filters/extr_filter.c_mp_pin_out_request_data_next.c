
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_pin {TYPE_1__* conn; } ;
struct TYPE_2__ {int manual_connection; } ;


 int add_pending (int ) ;
 scalar_t__ mp_pin_out_request_data (struct mp_pin*) ;

void mp_pin_out_request_data_next(struct mp_pin *p)
{
    if (mp_pin_out_request_data(p))
        add_pending(p->conn->manual_connection);
}
