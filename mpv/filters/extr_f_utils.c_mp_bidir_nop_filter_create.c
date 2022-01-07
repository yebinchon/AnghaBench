
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter {int * ppins; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int bidir_nop_filter ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int mp_pin_connect (int ,int ) ;

struct mp_filter *mp_bidir_nop_filter_create(struct mp_filter *parent)
{
    struct mp_filter *f = mp_filter_create(parent, &bidir_nop_filter);
    if (!f)
        return ((void*)0);

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    mp_pin_connect(f->ppins[1], f->ppins[0]);

    return f;
}
