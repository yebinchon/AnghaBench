#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct priv {int /*<<< orphan*/  next_pts; int /*<<< orphan*/  codec_timebase; int /*<<< orphan*/  avframe; TYPE_2__* avctx; int /*<<< orphan*/  force_channel_map; } ;
struct mp_filter {int /*<<< orphan*/  log; int /*<<< orphan*/  global; struct priv* priv; } ;
struct mp_codec_params {int /*<<< orphan*/  channels; scalar_t__ force_channels; } ;
struct ad_lavc_params {int /*<<< orphan*/  threads; int /*<<< orphan*/  avopts; int /*<<< orphan*/  ac3drc; scalar_t__ downmix; } ;
struct TYPE_14__ {int num_chmaps; int /*<<< orphan*/ * chmaps; } ;
struct MPOpts {TYPE_1__ audio_output_channels; } ;
struct TYPE_16__ {int /*<<< orphan*/  id; } ;
struct TYPE_15__ {int /*<<< orphan*/  request_channel_layout; int /*<<< orphan*/  pkt_timebase; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVCodecContext ;
typedef  TYPE_3__ AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int /*<<< orphan*/ * GLOBAL_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*,...) ; 
 int /*<<< orphan*/  MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  ad_lavc_conf ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_codec_params*) ; 
 void* FUNC9 (struct priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,struct mp_codec_params*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC13(struct mp_filter *da, struct mp_codec_params *codec,
                 const char *decoder)
{
    struct priv *ctx = da->priv;
    struct MPOpts *mpopts = FUNC9(ctx, da->global, GLOBAL_CONFIG);
    struct ad_lavc_params *opts =
        FUNC9(ctx, da->global, &ad_lavc_conf);
    AVCodecContext *lavc_context;
    AVCodec *lavc_codec;

    ctx->codec_timebase = FUNC8(codec);

    if (codec->force_channels)
        ctx->force_channel_map = codec->channels;

    lavc_codec = FUNC5(decoder);
    if (!lavc_codec) {
        FUNC0(da, "Cannot find codec '%s' in libavcodec...\n", decoder);
        return false;
    }

    lavc_context = FUNC4(lavc_codec);
    ctx->avctx = lavc_context;
    ctx->avframe = FUNC1();
    lavc_context->codec_type = AVMEDIA_TYPE_AUDIO;
    lavc_context->codec_id = lavc_codec->id;

#if LIBAVCODEC_VERSION_MICRO >= 100
    lavc_context->pkt_timebase = ctx->codec_timebase;
#endif

    if (opts->downmix && mpopts->audio_output_channels.num_chmaps == 1) {
        lavc_context->request_channel_layout =
            FUNC7(&mpopts->audio_output_channels.chmaps[0]);
    }

    // Always try to set - option only exists for AC3 at the moment
    FUNC3(lavc_context, "drc_scale", opts->ac3drc,
                      AV_OPT_SEARCH_CHILDREN);

#if LIBAVCODEC_VERSION_MICRO >= 100
    // Let decoder add AV_FRAME_DATA_SKIP_SAMPLES.
    av_opt_set(lavc_context, "flags2", "+skip_manual", AV_OPT_SEARCH_CHILDREN);
#endif

    FUNC12(da->log, lavc_context, opts->avopts);

    if (FUNC11(lavc_context, codec) < 0) {
        FUNC0(da, "Could not set decoder parameters.\n");
        return false;
    }

    FUNC10(da->log, lavc_context, opts->threads);

    /* open it */
    if (FUNC6(lavc_context, lavc_codec, NULL) < 0) {
        FUNC0(da, "Could not open codec.\n");
        return false;
    }

    ctx->next_pts = MP_NOPTS_VALUE;

    return true;
}