
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct mp_pin {scalar_t__ dir; int data_requested; TYPE_1__ data; int conn; } ;


 scalar_t__ MP_PIN_OUT ;
 int assert (int) ;
 int mp_frame_unref (TYPE_1__*) ;

__attribute__((used)) static void reset_pin(struct mp_pin *p)
{
    if (!p->conn || p->dir != MP_PIN_OUT) {
        assert(!p->data.type);
        assert(!p->data_requested);
    }
    mp_frame_unref(&p->data);
    p->data_requested = 0;
}
