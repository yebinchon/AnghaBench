#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  method_name; scalar_t__ copying; } ;
struct TYPE_4__ {int num_sent_packets; int num_requeue_packets; scalar_t__ num_delay_queue; scalar_t__ max_delay_queue; int hwdec_notified; int hw_probing; struct demux_packet** sent_packets; TYPE_1__ hwdec; scalar_t__ use_hwdec; scalar_t__ hwdec_requested; scalar_t__ hwdec_fail_count; int /*<<< orphan*/  hwdec_swpool; struct mp_image** delay_queue; struct demux_packet** requeue_packets; scalar_t__ hwdec_failed; } ;
typedef  TYPE_2__ vd_ffmpeg_ctx ;
struct mp_image {scalar_t__ hwctx; } ;
struct mp_frame {int dummy; } ;
struct mp_filter {TYPE_2__* priv; } ;
struct demux_packet {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ INT_MAX ; 
 struct mp_frame FUNC1 (int /*<<< orphan*/ ,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  FUNC3 (struct mp_filter*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_filter*,char*) ; 
 int FUNC6 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_filter*) ; 
 struct mp_image* FUNC9 (struct mp_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_image**) ; 
 struct mp_image* FUNC11 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC12 (struct demux_packet*) ; 

__attribute__((used)) static int FUNC13(struct mp_filter *vd, struct mp_frame *out_frame)
{
    vd_ffmpeg_ctx *ctx = vd->priv;

    int ret = FUNC6(vd);

    if (ctx->hwdec_failed) {
        // Failed hardware decoding? Try again in software.
        struct demux_packet **pkts = ctx->sent_packets;
        int num_pkts = ctx->num_sent_packets;
        ctx->sent_packets = NULL;
        ctx->num_sent_packets = 0;

        FUNC7(vd);

        ctx->requeue_packets = pkts;
        ctx->num_requeue_packets = num_pkts;

        return 0; // force retry
    }

    if (ret == FUNC0(EAGAIN) && ctx->num_requeue_packets)
        return 0; // force retry, so send_queued_packet() gets called

    if (!ctx->num_delay_queue)
        return ret;

    if (ctx->num_delay_queue <= ctx->max_delay_queue && ret != AVERROR_EOF)
        return FUNC0(EAGAIN);

    struct mp_image *res = ctx->delay_queue[0];
    FUNC4(ctx->delay_queue, ctx->num_delay_queue, 0);

    res = res ? FUNC11(res) : NULL;
    if (!res)
        return AVERROR_UNKNOWN;

    if (ctx->use_hwdec && ctx->hwdec.copying && res->hwctx) {
        struct mp_image *sw = FUNC9(res, ctx->hwdec_swpool);
        FUNC10(&res);
        res = sw;
        if (!res) {
            FUNC2(vd, "Could not copy back hardware decoded frame.\n");
            ctx->hwdec_fail_count = INT_MAX - 1; // force fallback
            FUNC8(vd);
            return AVERROR_UNKNOWN;
        }
    }

    if (!ctx->hwdec_notified && ctx->hwdec_requested) {
        if (ctx->use_hwdec) {
            FUNC3(vd, "Using hardware decoding (%s).\n",
                    ctx->hwdec.method_name);
        } else {
            FUNC5(vd, "Using software decoding.\n");
        }
        ctx->hwdec_notified = true;
    }

    if (ctx->hw_probing) {
        for (int n = 0; n < ctx->num_sent_packets; n++)
            FUNC12(ctx->sent_packets[n]);
        ctx->num_sent_packets = 0;
        ctx->hw_probing = false;
    }

    *out_frame = FUNC1(MP_FRAME_VIDEO, res);
    return 0;
}