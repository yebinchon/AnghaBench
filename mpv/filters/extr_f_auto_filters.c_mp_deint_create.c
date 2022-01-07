
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter {int global; struct deint_priv* priv; } ;
struct TYPE_2__ {void* out; void* in; } ;
struct deint_priv {int opts; TYPE_1__ sub; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int deint_filter ;
 int filter_conf ;
 int m_config_cache_alloc (struct mp_filter*,int ,int *) ;
 void* mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;

struct mp_filter *mp_deint_create(struct mp_filter *parent)
{
    struct mp_filter *f = mp_filter_create(parent, &deint_filter);
    if (!f)
        return ((void*)0);

    struct deint_priv *p = f->priv;

    p->sub.in = mp_filter_add_pin(f, MP_PIN_IN, "in");
    p->sub.out = mp_filter_add_pin(f, MP_PIN_OUT, "out");

    p->opts = m_config_cache_alloc(f, f->global, &filter_conf);

    return f;
}
