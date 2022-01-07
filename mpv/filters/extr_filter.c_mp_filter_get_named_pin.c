
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_pin {int name; } ;
struct mp_filter {int num_pins; struct mp_pin** pins; } ;


 scalar_t__ strcmp (int ,char const*) ;

struct mp_pin *mp_filter_get_named_pin(struct mp_filter *f, const char *name)
{
    for (int n = 0; n < f->num_pins; n++) {
        if (name && strcmp(f->pins[n]->name, name) == 0)
            return f->pins[n];
    }
    return ((void*)0);
}
