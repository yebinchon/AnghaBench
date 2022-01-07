
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwupload {struct mp_filter* f; } ;
struct priv {struct mp_hwupload public; } ;
struct mp_filter {struct priv* priv; } ;


 int MP_ERR (struct mp_filter*,char*) ;
 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int hwupload_filter ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int probe_formats (struct mp_hwupload*,int) ;
 int talloc_free (struct mp_filter*) ;

struct mp_hwupload *mp_hwupload_create(struct mp_filter *parent, int hw_imgfmt)
{
    struct mp_filter *f = mp_filter_create(parent, &hwupload_filter);
    if (!f)
        return ((void*)0);

    struct priv *p = f->priv;
    struct mp_hwupload *u = &p->public;
    u->f = f;

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    if (!probe_formats(u, hw_imgfmt)) {
        MP_ERR(f, "hardware format not supported\n");
        goto error;
    }

    return u;
error:
    talloc_free(f);
    return ((void*)0);
}
