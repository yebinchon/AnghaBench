
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_autoconvert {struct mp_filter* f; } ;
struct TYPE_2__ {int out; int in; } ;
struct priv {double audio_speed; struct mp_autoconvert public; TYPE_1__ sub; int log; } ;
struct mp_filter {int * ppins; int log; struct priv* priv; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int autoconvert_filter ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;

struct mp_autoconvert *mp_autoconvert_create(struct mp_filter *parent)
{
    struct mp_filter *f = mp_filter_create(parent, &autoconvert_filter);
    if (!f)
        return ((void*)0);

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    struct priv *p = f->priv;
    p->public.f = f;
    p->log = f->log;
    p->audio_speed = 1.0;
    p->sub.in = f->ppins[0];
    p->sub.out = f->ppins[1];

    return &p->public;
}
