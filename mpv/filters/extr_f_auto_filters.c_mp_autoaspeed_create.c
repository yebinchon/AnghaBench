
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {struct aspeed_priv* priv; } ;
struct TYPE_2__ {void* out; void* in; } ;
struct aspeed_priv {double cur_speed; TYPE_1__ sub; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int aspeed_filter ;
 void* mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;

struct mp_filter *mp_autoaspeed_create(struct mp_filter *parent)
{
    struct mp_filter *f = mp_filter_create(parent, &aspeed_filter);
    if (!f)
        return ((void*)0);

    struct aspeed_priv *p = f->priv;
    p->cur_speed = 1.0;

    p->sub.in = mp_filter_add_pin(f, MP_PIN_IN, "in");
    p->sub.out = mp_filter_add_pin(f, MP_PIN_OUT, "out");

    return f;
}
