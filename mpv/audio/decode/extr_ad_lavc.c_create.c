
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decoder {struct mp_filter* f; } ;
struct priv {struct mp_decoder public; } ;
struct mp_filter {struct priv* priv; int log; } ;
struct mp_codec_params {int dummy; } ;


 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int ad_lavc_filter ;
 int init (struct mp_filter*,struct mp_codec_params*,char const*) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int mp_log_new (struct mp_filter*,int ,int *) ;
 int talloc_free (struct mp_filter*) ;

__attribute__((used)) static struct mp_decoder *create(struct mp_filter *parent,
                                 struct mp_codec_params *codec,
                                 const char *decoder)
{
    struct mp_filter *da = mp_filter_create(parent, &ad_lavc_filter);
    if (!da)
        return ((void*)0);

    mp_filter_add_pin(da, MP_PIN_IN, "in");
    mp_filter_add_pin(da, MP_PIN_OUT, "out");

    da->log = mp_log_new(da, parent->log, ((void*)0));

    struct priv *priv = da->priv;
    priv->public.f = da;

    if (!init(da, codec, decoder)) {
        talloc_free(da);
        return ((void*)0);
    }
    return &priv->public;
}
