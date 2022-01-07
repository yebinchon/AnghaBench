
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_sws_filter {int pool; TYPE_1__* sws; struct mp_filter* f; } ;
struct mp_filter {int global; int log; struct mp_sws_filter* priv; } ;
struct TYPE_3__ {int log; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int mp_image_pool_new (struct mp_sws_filter*) ;
 TYPE_1__* mp_sws_alloc (struct mp_sws_filter*) ;
 int mp_sws_enable_cmdline_opts (TYPE_1__*,int ) ;
 int sws_filter ;

struct mp_sws_filter *mp_sws_filter_create(struct mp_filter *parent)
{
    struct mp_filter *f = mp_filter_create(parent, &sws_filter);
    if (!f)
        return ((void*)0);

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    struct mp_sws_filter *s = f->priv;
    s->f = f;
    s->sws = mp_sws_alloc(s);
    s->sws->log = f->log;
    mp_sws_enable_cmdline_opts(s->sws, f->global);
    s->pool = mp_image_pool_new(s);

    return s;
}
