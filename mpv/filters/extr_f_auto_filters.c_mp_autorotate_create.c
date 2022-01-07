
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* out; void* in; } ;
struct rotate_priv {int prev_rotate; TYPE_1__ sub; } ;
struct mp_filter {struct rotate_priv* priv; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 void* mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int rotate_filter ;

struct mp_filter *mp_autorotate_create(struct mp_filter *parent)
{
    struct mp_filter *f = mp_filter_create(parent, &rotate_filter);
    if (!f)
        return ((void*)0);

    struct rotate_priv *p = f->priv;
    p->prev_rotate = -1;

    p->sub.in = mp_filter_add_pin(f, MP_PIN_IN, "in");
    p->sub.out = mp_filter_add_pin(f, MP_PIN_OUT, "out");

    return f;
}
