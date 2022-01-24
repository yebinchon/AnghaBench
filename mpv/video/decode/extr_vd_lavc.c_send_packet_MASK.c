#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int num_sent_packets; int /*<<< orphan*/  sent_packets; TYPE_1__* opts; scalar_t__ hw_probing; int /*<<< orphan*/  codec_timebase; TYPE_3__* avctx; scalar_t__ hwdec_failed; struct demux_packet** requeue_packets; scalar_t__ num_requeue_packets; } ;
typedef  TYPE_2__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_2__* priv; } ;
struct demux_packet {int dummy; } ;
struct TYPE_8__ {scalar_t__ skip_frame; } ;
struct TYPE_6__ {int software_fallback; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AVDISCARD_ALL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,struct demux_packet*) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 struct demux_packet* FUNC3 (struct demux_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct demux_packet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_filter*) ; 

__attribute__((used)) static int FUNC7(struct mp_filter *vd, struct demux_packet *pkt)
{
    vd_ffmpeg_ctx *ctx = vd->priv;
    AVCodecContext *avctx = ctx->avctx;

    if (ctx->num_requeue_packets && ctx->requeue_packets[0] != pkt)
        return FUNC0(EAGAIN); // cannot consume the packet

    if (ctx->hwdec_failed)
        return FUNC0(EAGAIN);

    if (!ctx->avctx)
        return AVERROR_EOF;

    FUNC6(vd);

    if (avctx->skip_frame == AVDISCARD_ALL)
        return 0;

    AVPacket avpkt;
    FUNC5(&avpkt, pkt, &ctx->codec_timebase);

    int ret = FUNC2(avctx, pkt ? &avpkt : NULL);
    if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF)
        return ret;

    if (ctx->hw_probing && ctx->num_sent_packets < 32 &&
        ctx->opts->software_fallback <= 32)
    {
        pkt = pkt ? FUNC3(pkt) : NULL;
        FUNC1(ctx, ctx->sent_packets, ctx->num_sent_packets, pkt);
    }

    if (ret < 0)
        FUNC4(vd);
    return ret;
}