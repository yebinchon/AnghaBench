
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int pool; int opts; } ;
struct mp_filter {struct priv* priv; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int MP_WARN (struct mp_filter*,char*) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int mp_image_pool_new (struct priv*) ;
 int talloc_free (void*) ;
 int talloc_steal (struct priv*,void*) ;
 int vf_sub_filter ;

__attribute__((used)) static struct mp_filter *vf_sub_create(struct mp_filter *parent, void *options)
{
    struct mp_filter *f = mp_filter_create(parent, &vf_sub_filter);
    if (!f) {
        talloc_free(options);
        return ((void*)0);
    }

    MP_WARN(f, "This filter is deprecated and will be removed (no replacement)\n");

    mp_filter_add_pin(f, MP_PIN_IN, "in");
    mp_filter_add_pin(f, MP_PIN_OUT, "out");

    struct priv *priv = f->priv;
    priv->opts = talloc_steal(priv, options);
    priv->pool = mp_image_pool_new(priv);

    return f;
}
