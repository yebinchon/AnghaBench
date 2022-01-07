
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {double speed; int in_pin; int out_pool; void* cur_format; void* opts; } ;
struct mp_filter {int * ppins; struct priv* priv; } ;
struct mp_autoconvert {TYPE_1__* f; } ;
struct TYPE_2__ {int * pins; } ;


 int AF_FORMAT_FLOAT ;
 int AF_FORMAT_S16 ;
 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int abort () ;
 int af_scaletempo_filter ;
 void* mp_aframe_create () ;
 int mp_aframe_pool_create (struct priv*) ;
 int mp_autoconvert_add_afmt (struct mp_autoconvert*,int ) ;
 struct mp_autoconvert* mp_autoconvert_create (struct mp_filter*) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int mp_pin_connect (int ,int ) ;
 int talloc_free (void*) ;
 void* talloc_steal (struct priv*,void*) ;

__attribute__((used)) static struct mp_filter *af_scaletempo_create(struct mp_filter *parent,
                                              void *options)
{
    struct mp_filter *f = mp_filter_create(parent, &af_scaletempo_filter);
    if (!f) {
        talloc_free(options);
        return ((void*)0);
    }

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    struct priv *s = f->priv;
    s->opts = talloc_steal(s, options);
    s->speed = 1.0;
    s->cur_format = talloc_steal(s, mp_aframe_create());
    s->out_pool = mp_aframe_pool_create(s);

    struct mp_autoconvert *conv = mp_autoconvert_create(f);
    if (!conv)
        abort();

    mp_autoconvert_add_afmt(conv, AF_FORMAT_S16);
    mp_autoconvert_add_afmt(conv, AF_FORMAT_FLOAT);

    mp_pin_connect(conv->f->pins[0], f->ppins[0]);
    s->in_pin = conv->f->pins[1];

    return f;
}
