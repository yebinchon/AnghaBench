
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct priv {int in_pin; TYPE_3__* opts; } ;
struct mp_filter {int * ppins; struct priv* priv; } ;
struct mp_autoconvert {TYPE_2__* f; } ;
struct TYPE_4__ {scalar_t__ num_chmaps; int * chmaps; } ;
struct TYPE_6__ {TYPE_1__ in_channels; scalar_t__ in_srate; scalar_t__ in_format; } ;
struct TYPE_5__ {int * pins; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int abort () ;
 int af_format_filter ;
 int mp_autoconvert_add_afmt (struct mp_autoconvert*,scalar_t__) ;
 int mp_autoconvert_add_chmap (struct mp_autoconvert*,int *) ;
 int mp_autoconvert_add_srate (struct mp_autoconvert*,scalar_t__) ;
 struct mp_autoconvert* mp_autoconvert_create (struct mp_filter*) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int mp_pin_connect (int ,int ) ;
 int talloc_free (void*) ;
 TYPE_3__* talloc_steal (struct priv*,void*) ;

__attribute__((used)) static struct mp_filter *af_format_create(struct mp_filter *parent,
                                              void *options)
{
    struct mp_filter *f = mp_filter_create(parent, &af_format_filter);
    if (!f) {
        talloc_free(options);
        return ((void*)0);
    }

    struct priv *p = f->priv;
    p->opts = talloc_steal(p, options);

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    struct mp_autoconvert *conv = mp_autoconvert_create(f);
    if (!conv)
        abort();

    if (p->opts->in_format)
        mp_autoconvert_add_afmt(conv, p->opts->in_format);
    if (p->opts->in_srate)
        mp_autoconvert_add_srate(conv, p->opts->in_srate);
    if (p->opts->in_channels.num_chmaps > 0)
        mp_autoconvert_add_chmap(conv, &p->opts->in_channels.chmaps[0]);

    mp_pin_connect(conv->f->pins[0], f->ppins[0]);
    p->in_pin = conv->f->pins[1];

    return f;
}
