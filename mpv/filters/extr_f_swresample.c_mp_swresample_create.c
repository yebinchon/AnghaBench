
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_swresample {double speed; struct mp_filter* f; } ;
struct priv {double cmd_speed; struct mp_swresample public; void* out_pool; void* reorder_buffer; TYPE_1__* opts; int log; } ;
struct mp_resample_opts {int dummy; } ;
struct mp_filter {int global; int log; struct priv* priv; } ;
struct TYPE_3__ {int avopts; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 void* mp_aframe_pool_create (struct priv*) ;
 int mp_dup_str_array (struct priv*,int ) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 TYPE_1__* mp_get_config_group (struct priv*,int ,int *) ;
 int resample_conf ;
 int swresample_filter ;
 TYPE_1__* talloc_dup (struct priv*,struct mp_resample_opts*) ;

struct mp_swresample *mp_swresample_create(struct mp_filter *parent,
                                           struct mp_resample_opts *opts)
{
    struct mp_filter *f = mp_filter_create(parent, &swresample_filter);
    if (!f)
        return ((void*)0);

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    struct priv *p = f->priv;
    p->public.f = f;
    p->public.speed = 1.0;
    p->cmd_speed = 1.0;
    p->log = f->log;

    if (opts) {
        p->opts = talloc_dup(p, opts);
        p->opts->avopts = mp_dup_str_array(p, p->opts->avopts);
    } else {
        p->opts = mp_get_config_group(p, f->global, &resample_conf);
    }

    p->reorder_buffer = mp_aframe_pool_create(p);
    p->out_pool = mp_aframe_pool_create(p);

    return &p->public;
}
