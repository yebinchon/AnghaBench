#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct priv {int sample_size; int pcmhack; int aframesize; int framecount; int shutdown; void* lastpts; void* savepts; TYPE_4__* enc; } ;
struct mp_chmap_sel {int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {scalar_t__ num; } ;
struct ao {int samplerate; int untimed; int period_size; TYPE_10__* encode_lavc_ctx; TYPE_6__ channels; int /*<<< orphan*/  format; int /*<<< orphan*/  log; struct priv* priv; } ;
struct TYPE_16__ {TYPE_2__* encoder; } ;
struct TYPE_15__ {int /*<<< orphan*/  supported_samplerates; } ;
struct TYPE_13__ {int num; int den; } ;
struct TYPE_14__ {int sample_rate; scalar_t__ channels; int bits_per_raw_sample; int frame_size; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  channel_layout; TYPE_1__ time_base; TYPE_3__* codec; } ;
struct TYPE_12__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ AVCodecContext ;
typedef  TYPE_3__ AVCodec ;

/* Variables and functions */
 void* AV_NOPTS_VALUE ; 
 scalar_t__ AV_NUM_DATA_POINTERS ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_NONE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  STREAM_AUDIO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*,struct mp_chmap_sel*,TYPE_6__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (double) ; 
 TYPE_4__* FUNC7 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,struct ao*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_chmap_sel*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  on_ready ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ao*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC14 (struct priv*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC15(struct ao *ao)
{
    struct priv *ac = ao->priv;

    ac->enc = FUNC7(ao->encode_lavc_ctx, STREAM_AUDIO, ao->log);
    if (!ac->enc)
        return -1;
    FUNC14(ac, ac->enc);

    AVCodecContext *encoder = ac->enc->encoder;
    const AVCodec *codec = encoder->codec;

    int samplerate = FUNC2(ao->samplerate,
                                               codec->supported_samplerates);
    if (samplerate > 0)
        ao->samplerate = samplerate;

    encoder->time_base.num = 1;
    encoder->time_base.den = ao->samplerate;

    encoder->sample_rate = ao->samplerate;

    struct mp_chmap_sel sel = {0};
    FUNC10(&sel);
    if (!FUNC4(ao, &sel, &ao->channels, false))
        goto fail;
    FUNC9(&ao->channels);
    encoder->channels = ao->channels.num;
    encoder->channel_layout = FUNC11(&ao->channels);

    encoder->sample_fmt = AV_SAMPLE_FMT_NONE;

    FUNC13(ao, codec);

    ac->sample_size = FUNC1(ao->format);
    encoder->sample_fmt = FUNC3(ao->format);
    encoder->bits_per_raw_sample = ac->sample_size * 8;

    if (!FUNC8(ac->enc, on_ready, ao))
        goto fail;

    ac->pcmhack = 0;
    if (encoder->frame_size <= 1)
        ac->pcmhack = FUNC5(encoder->codec_id) / 8;

    if (ac->pcmhack) {
        ac->aframesize = 16384; // "enough"
    } else {
        ac->aframesize = encoder->frame_size;
    }

    // enough frames for at least 0.25 seconds
    ac->framecount = FUNC6(ao->samplerate * 0.25 / ac->aframesize);
    // but at least one!
    ac->framecount = FUNC0(ac->framecount, 1);

    ac->savepts = AV_NOPTS_VALUE;
    ac->lastpts = AV_NOPTS_VALUE;

    ao->untimed = true;

    ao->period_size = ac->aframesize * ac->framecount;

    if (ao->channels.num > AV_NUM_DATA_POINTERS)
        goto fail;

    return 0;

fail:
    FUNC12(&ao->encode_lavc_ctx->lock);
    ac->shutdown = true;
    return -1;
}