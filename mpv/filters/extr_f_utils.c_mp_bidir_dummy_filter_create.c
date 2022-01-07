
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter {int dummy; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int bidir_dummy_filter ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;

struct mp_filter *mp_bidir_dummy_filter_create(struct mp_filter *parent)
{
    struct mp_filter *f = mp_filter_create(parent, &bidir_dummy_filter);
    if (!f)
        return ((void*)0);

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    return f;
}
