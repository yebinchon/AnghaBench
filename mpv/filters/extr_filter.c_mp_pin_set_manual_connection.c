
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_pin {TYPE_2__* owner; } ;
struct TYPE_4__ {TYPE_1__* in; } ;
struct TYPE_3__ {int * parent; } ;


 int mp_pin_set_manual_connection_for (struct mp_pin*,int *) ;

void mp_pin_set_manual_connection(struct mp_pin *p, bool connected)
{
    mp_pin_set_manual_connection_for(p, connected ? p->owner->in->parent : ((void*)0));
}
