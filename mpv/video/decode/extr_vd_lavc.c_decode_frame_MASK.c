#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  num_delay_queue; int /*<<< orphan*/  delay_queue; TYPE_2__* pic; int /*<<< orphan*/  codec_timebase; scalar_t__ hwdec_fail_count; scalar_t__ num_requeue_packets; int /*<<< orphan*/ * avctx; } ;
typedef  TYPE_1__ vd_ffmpeg_ctx ;
struct mp_image {void* pkt_duration; void* dts; void* pts; scalar_t__* planes; } ;
struct mp_filter {TYPE_1__* priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  pkt_duration; int /*<<< orphan*/  pkt_dts; int /*<<< orphan*/  pts; int /*<<< orphan*/ * buf; } ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_filter*) ; 
 struct mp_image* FUNC6 (TYPE_2__*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_filter*) ; 

__attribute__((used)) static int FUNC11(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;
    AVCodecContext *avctx = ctx->avctx;

    if (!avctx)
        return AVERROR_EOF;

    FUNC8(vd);

    // Re-send old packets (typically after a hwdec fallback during init).
    if (ctx->num_requeue_packets)
        FUNC10(vd);

    int ret = FUNC4(avctx, ctx->pic);
    if (ret == AVERROR_EOF) {
        // If flushing was initialized earlier and has ended now, make it start
        // over in case we get new packets at some point in the future. This
        // must take the delay queue into account, so avctx returns EOF until
        // the delay queue has been drained.
        if (!ctx->num_delay_queue)
            FUNC9(vd);
        return ret;
    } else if (ret < 0 && ret != FUNC0(EAGAIN)) {
        FUNC5(vd);
    }

    if (!ctx->pic->buf[0])
        return ret;

    ctx->hwdec_fail_count = 0;

    struct mp_image *mpi = FUNC6(ctx->pic);
    if (!mpi) {
        FUNC3(ctx->pic);
        return ret;
    }
    FUNC2(mpi->planes[0] || mpi->planes[3]);
    mpi->pts = FUNC7(ctx->pic->pts, &ctx->codec_timebase);
    mpi->dts = FUNC7(ctx->pic->pkt_dts, &ctx->codec_timebase);

#if LIBAVCODEC_VERSION_MICRO >= 100
    mpi->pkt_duration =
        mp_pts_from_av(ctx->pic->pkt_duration, &ctx->codec_timebase);
#endif

    FUNC3(ctx->pic);

    FUNC1(ctx, ctx->delay_queue, ctx->num_delay_queue, mpi);
    return ret;
}