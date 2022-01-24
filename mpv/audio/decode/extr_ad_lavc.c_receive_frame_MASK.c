#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_13__ {scalar_t__ num; } ;
struct priv {double next_pts; scalar_t__ skip_samples; scalar_t__ trim_samples; int preroll_done; TYPE_4__* avframe; TYPE_3__ force_channel_map; int /*<<< orphan*/  codec_timebase; TYPE_2__* avctx; } ;
struct mp_frame {int dummy; } ;
struct mp_filter {struct priv* priv; } ;
struct mp_aframe {int dummy; } ;
struct TYPE_14__ {int flags; int /*<<< orphan*/  pts; int /*<<< orphan*/ * buf; } ;
struct TYPE_12__ {scalar_t__ delay; } ;
struct TYPE_11__ {int size; char* data; } ;
typedef  TYPE_1__ AVFrameSideData ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_FRAME_DATA_SKIP_SAMPLES ; 
 int AV_FRAME_FLAG_DISCARD ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  EAGAIN ; 
 struct mp_frame FUNC2 (int /*<<< orphan*/ ,struct mp_aframe*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  MP_FRAME_AUDIO ; 
 double MP_NOPTS_VALUE ; 
 TYPE_1__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*,TYPE_4__*) ; 
 double FUNC9 (struct mp_aframe*) ; 
 struct mp_aframe* FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC12 (struct mp_aframe*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (struct mp_aframe*,double) ; 
 int /*<<< orphan*/  FUNC14 (struct mp_aframe*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct mp_aframe*,scalar_t__) ; 
 double FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct mp_aframe*) ; 

__attribute__((used)) static int FUNC18(struct mp_filter *da, struct mp_frame *out)
{
    struct priv *priv = da->priv;
    AVCodecContext *avctx = priv->avctx;

    int ret = FUNC8(avctx, priv->avframe);

    if (ret == AVERROR_EOF) {
        // If flushing was initialized earlier and has ended now, make it start
        // over in case we get new packets at some point in the future.
        // (Dont' reset the filter itself, we want to keep other state.)
        FUNC7(priv->avctx);
        return ret;
    } else if (ret < 0 && ret != FUNC0(EAGAIN)) {
        FUNC4(da, "Error decoding audio.\n");
    }

#if LIBAVCODEC_VERSION_MICRO >= 100
    if (priv->avframe->flags & AV_FRAME_FLAG_DISCARD)
        av_frame_unref(priv->avframe);
#endif

    if (!priv->avframe->buf[0])
        return ret;

    double out_pts = FUNC16(priv->avframe->pts, &priv->codec_timebase);

    struct mp_aframe *mpframe = FUNC10(priv->avframe);
    if (!mpframe) {
        FUNC4(da, "Converting libavcodec frame to mpv frame failed.\n");
        return ret;
    }

    if (priv->force_channel_map.num)
        FUNC12(mpframe, &priv->force_channel_map);

    if (out_pts == MP_NOPTS_VALUE)
        out_pts = priv->next_pts;
    FUNC13(mpframe, out_pts);

    priv->next_pts = FUNC9(mpframe);

#if LIBAVCODEC_VERSION_MICRO >= 100
    AVFrameSideData *sd =
        av_frame_get_side_data(priv->avframe, AV_FRAME_DATA_SKIP_SAMPLES);
    if (sd && sd->size >= 10) {
        char *d = sd->data;
        priv->skip_samples += AV_RL32(d + 0);
        priv->trim_samples += AV_RL32(d + 4);
    }
#endif

    if (!priv->preroll_done) {
        // Skip only if this isn't already handled by AV_FRAME_DATA_SKIP_SAMPLES.
        if (!priv->skip_samples)
            priv->skip_samples = avctx->delay;
        priv->preroll_done = true;
    }

    uint32_t skip = FUNC3(priv->skip_samples, FUNC11(mpframe));
    if (skip) {
        FUNC15(mpframe, skip);
        priv->skip_samples -= skip;
    }
    uint32_t trim = FUNC3(priv->trim_samples, FUNC11(mpframe));
    if (trim) {
        FUNC14(mpframe, FUNC11(mpframe) - trim);
        priv->trim_samples -= trim;
    }

    if (FUNC11(mpframe) > 0) {
        *out = FUNC2(MP_FRAME_AUDIO, mpframe);
    } else {
        FUNC17(mpframe);
    }

    FUNC6(priv->avframe);

    return ret;
}