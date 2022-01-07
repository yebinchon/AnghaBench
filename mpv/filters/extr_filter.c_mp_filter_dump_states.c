
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {int num_pins; TYPE_1__* in; int * ppins; int * pins; } ;
struct TYPE_2__ {int num_children; struct mp_filter** children; struct mp_filter* parent; } ;


 int MP_WARN (struct mp_filter*,char*,int ,struct mp_filter*,int ,struct mp_filter*) ;
 int dump_pin_state (struct mp_filter*,int ) ;
 int filt_name (struct mp_filter*) ;

void mp_filter_dump_states(struct mp_filter *f)
{
    MP_WARN(f, "%s[%p] (%s[%p])\n", filt_name(f), f,
            filt_name(f->in->parent), f->in->parent);
    for (int n = 0; n < f->num_pins; n++) {
        dump_pin_state(f, f->pins[n]);
        dump_pin_state(f, f->ppins[n]);
    }

    for (int n = 0; n < f->in->num_children; n++)
        mp_filter_dump_states(f->in->children[n]);
}
