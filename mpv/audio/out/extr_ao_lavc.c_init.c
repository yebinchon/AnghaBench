
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct priv {int sample_size; int pcmhack; int aframesize; int framecount; int shutdown; void* lastpts; void* savepts; TYPE_4__* enc; } ;
struct mp_chmap_sel {int member_0; } ;
struct TYPE_17__ {scalar_t__ num; } ;
struct ao {int samplerate; int untimed; int period_size; TYPE_10__* encode_lavc_ctx; TYPE_6__ channels; int format; int log; struct priv* priv; } ;
struct TYPE_16__ {TYPE_2__* encoder; } ;
struct TYPE_15__ {int supported_samplerates; } ;
struct TYPE_13__ {int num; int den; } ;
struct TYPE_14__ {int sample_rate; scalar_t__ channels; int bits_per_raw_sample; int frame_size; int codec_id; int sample_fmt; int channel_layout; TYPE_1__ time_base; TYPE_3__* codec; } ;
struct TYPE_12__ {int lock; } ;
typedef TYPE_2__ AVCodecContext ;
typedef TYPE_3__ AVCodec ;


 void* AV_NOPTS_VALUE ;
 scalar_t__ AV_NUM_DATA_POINTERS ;
 int AV_SAMPLE_FMT_NONE ;
 int MPMAX (int,int) ;
 int STREAM_AUDIO ;
 int af_fmt_to_bytes (int ) ;
 int af_select_best_samplerate (int,int ) ;
 int af_to_avformat (int ) ;
 int ao_chmap_sel_adjust2 (struct ao*,struct mp_chmap_sel*,TYPE_6__*,int) ;
 int av_get_bits_per_sample (int ) ;
 int ceil (double) ;
 TYPE_4__* encoder_context_alloc (TYPE_10__*,int ,int ) ;
 int encoder_init_codec_and_muxer (TYPE_4__*,int ,struct ao*) ;
 int mp_chmap_reorder_to_lavc (TYPE_6__*) ;
 int mp_chmap_sel_add_any (struct mp_chmap_sel*) ;
 int mp_chmap_to_lavc (TYPE_6__*) ;
 int on_ready ;
 int pthread_mutex_unlock (int *) ;
 int select_format (struct ao*,TYPE_3__ const*) ;
 int talloc_steal (struct priv*,TYPE_4__*) ;

__attribute__((used)) static int init(struct ao *ao)
{
    struct priv *ac = ao->priv;

    ac->enc = encoder_context_alloc(ao->encode_lavc_ctx, STREAM_AUDIO, ao->log);
    if (!ac->enc)
        return -1;
    talloc_steal(ac, ac->enc);

    AVCodecContext *encoder = ac->enc->encoder;
    const AVCodec *codec = encoder->codec;

    int samplerate = af_select_best_samplerate(ao->samplerate,
                                               codec->supported_samplerates);
    if (samplerate > 0)
        ao->samplerate = samplerate;

    encoder->time_base.num = 1;
    encoder->time_base.den = ao->samplerate;

    encoder->sample_rate = ao->samplerate;

    struct mp_chmap_sel sel = {0};
    mp_chmap_sel_add_any(&sel);
    if (!ao_chmap_sel_adjust2(ao, &sel, &ao->channels, 0))
        goto fail;
    mp_chmap_reorder_to_lavc(&ao->channels);
    encoder->channels = ao->channels.num;
    encoder->channel_layout = mp_chmap_to_lavc(&ao->channels);

    encoder->sample_fmt = AV_SAMPLE_FMT_NONE;

    select_format(ao, codec);

    ac->sample_size = af_fmt_to_bytes(ao->format);
    encoder->sample_fmt = af_to_avformat(ao->format);
    encoder->bits_per_raw_sample = ac->sample_size * 8;

    if (!encoder_init_codec_and_muxer(ac->enc, on_ready, ao))
        goto fail;

    ac->pcmhack = 0;
    if (encoder->frame_size <= 1)
        ac->pcmhack = av_get_bits_per_sample(encoder->codec_id) / 8;

    if (ac->pcmhack) {
        ac->aframesize = 16384;
    } else {
        ac->aframesize = encoder->frame_size;
    }


    ac->framecount = ceil(ao->samplerate * 0.25 / ac->aframesize);

    ac->framecount = MPMAX(ac->framecount, 1);

    ac->savepts = AV_NOPTS_VALUE;
    ac->lastpts = AV_NOPTS_VALUE;

    ao->untimed = 1;

    ao->period_size = ac->aframesize * ac->framecount;

    if (ao->channels.num > AV_NUM_DATA_POINTERS)
        goto fail;

    return 0;

fail:
    pthread_mutex_unlock(&ao->encode_lavc_ctx->lock);
    ac->shutdown = 1;
    return -1;
}
