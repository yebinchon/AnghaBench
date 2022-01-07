
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter {struct fixed_aframe_size_priv* priv; } ;
struct fixed_aframe_size_priv {int samples; int pad_silence; int pool; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int fixed_aframe_size_filter ;
 int mp_aframe_pool_create (struct fixed_aframe_size_priv*) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;

struct mp_filter *mp_fixed_aframe_size_create(struct mp_filter *parent,
                                              int samples, bool pad_silence)
{
    if (samples < 1)
        return ((void*)0);

    struct mp_filter *f = mp_filter_create(parent, &fixed_aframe_size_filter);
    if (!f)
        return ((void*)0);

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    struct fixed_aframe_size_priv *p = f->priv;
    p->samples = samples;
    p->pad_silence = pad_silence;
    p->pool = mp_aframe_pool_create(p);

    return f;
}
