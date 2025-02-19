
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_pin {int dummy; } ;
struct mp_filter {int num_pins; struct mp_pin** pins; } ;


 int assert (int) ;
 int mp_pin_connect (struct mp_pin*,struct mp_pin*) ;

void mp_chain_filters(struct mp_pin *in, struct mp_pin *out,
                      struct mp_filter **filters, int num_filters)
{
    for (int n = 0; n < num_filters; n++) {
        if (!filters[n])
            continue;
        assert(filters[n]->num_pins == 2);
        mp_pin_connect(filters[n]->pins[0], in);
        in = filters[n]->pins[1];
    }
    mp_pin_connect(out, in);
}
