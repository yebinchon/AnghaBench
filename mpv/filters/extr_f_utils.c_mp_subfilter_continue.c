
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_subfilter {int frame; struct mp_pin* out; TYPE_1__* filter; } ;
struct mp_pin {int dummy; } ;
struct TYPE_2__ {struct mp_pin** pins; } ;


 int MP_NO_FRAME ;
 int mark_progress (struct mp_subfilter*) ;
 int mp_pin_in_needs_data (struct mp_pin*) ;
 int mp_pin_in_write (struct mp_pin*,int ) ;

void mp_subfilter_continue(struct mp_subfilter *sub)
{
    struct mp_pin *out = sub->filter ? sub->filter->pins[0] : sub->out;




    if (!mp_pin_in_needs_data(out)) {
        mark_progress(sub);
        return;
    }
    mp_pin_in_write(out, sub->frame);
    sub->frame = MP_NO_FRAME;
}
