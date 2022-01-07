
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_pin {struct mp_pin* other; } ;
struct mp_filter {int num_pins; TYPE_2__* in; struct mp_pin** ppins; } ;
struct TYPE_4__ {int num_children; TYPE_1__* info; struct mp_filter** children; } ;
struct TYPE_3__ {int (* reset ) (struct mp_filter*) ;} ;


 int reset_pin (struct mp_pin*) ;
 int stub1 (struct mp_filter*) ;

void mp_filter_reset(struct mp_filter *filter)
{
    for (int n = 0; n < filter->in->num_children; n++)
        mp_filter_reset(filter->in->children[n]);

    for (int n = 0; n < filter->num_pins; n++) {
        struct mp_pin *p = filter->ppins[n];
        reset_pin(p);
        reset_pin(p->other);
    }

    if (filter->in->info->reset)
        filter->in->info->reset(filter);
}
