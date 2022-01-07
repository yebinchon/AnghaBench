
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decoder {struct mp_filter* f; } ;
struct spdifContext {int use_dts_hd; scalar_t__ codec_id; struct mp_decoder public; int pool; int log; } ;
struct mp_filter {int log; struct spdifContext* priv; } ;
struct mp_codec_params {int codec; } ;


 scalar_t__ AV_CODEC_ID_NONE ;
 int MP_PIN_IN ;
 int MP_PIN_OUT ;
 int ad_spdif_filter ;
 int mp_aframe_pool_create (struct spdifContext*) ;
 scalar_t__ mp_codec_to_av_codec_id (int ) ;
 int mp_filter_add_pin (struct mp_filter*,int ,char*) ;
 struct mp_filter* mp_filter_create (struct mp_filter*,int *) ;
 int mp_log_new (struct mp_filter*,int ,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int talloc_free (struct mp_filter*) ;

__attribute__((used)) static struct mp_decoder *create(struct mp_filter *parent,
                                 struct mp_codec_params *codec,
                                 const char *decoder)
{
    struct mp_filter *da = mp_filter_create(parent, &ad_spdif_filter);
    if (!da)
        return ((void*)0);

    mp_filter_add_pin(da, MP_PIN_IN, "in");
    mp_filter_add_pin(da, MP_PIN_OUT, "out");

    da->log = mp_log_new(da, parent->log, ((void*)0));

    struct spdifContext *spdif_ctx = da->priv;
    spdif_ctx->log = da->log;
    spdif_ctx->pool = mp_aframe_pool_create(spdif_ctx);
    spdif_ctx->public.f = da;

    if (strcmp(decoder, "spdif_dts_hd") == 0)
        spdif_ctx->use_dts_hd = 1;

    spdif_ctx->codec_id = mp_codec_to_av_codec_id(codec->codec);


    if (spdif_ctx->codec_id == AV_CODEC_ID_NONE) {
        talloc_free(da);
        return ((void*)0);
    }
    return &spdif_ctx->public;
}
