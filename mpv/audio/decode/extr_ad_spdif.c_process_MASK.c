#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct spdifContext {int out_buffer_len; int sstride; int /*<<< orphan*/  out_buffer; int /*<<< orphan*/  pool; int /*<<< orphan*/  fmt; TYPE_4__* lavf_ctx; } ;
struct mp_frame {scalar_t__ type; struct demux_packet* data; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct spdifContext* priv; } ;
struct mp_aframe {int dummy; } ;
struct demux_packet {double pts; } ;
struct TYPE_7__ {int /*<<< orphan*/  pb; } ;
struct TYPE_6__ {scalar_t__ dts; scalar_t__ pts; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mp_frame FUNC1 (int /*<<< orphan*/ ,struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_filter*,char*,...) ; 
 int /*<<< orphan*/  MP_FRAME_AUDIO ; 
 scalar_t__ MP_FRAME_EOF ; 
 scalar_t__ MP_FRAME_PACKET ; 
 int /*<<< orphan*/  FUNC3 (struct mp_aframe**) ; 
 int FUNC4 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mp_filter*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** FUNC8 (struct mp_aframe*) ; 
 struct mp_aframe* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct mp_aframe*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_aframe*,double) ; 
 int /*<<< orphan*/  FUNC12 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct mp_frame) ; 
 struct mp_frame FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,struct demux_packet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct demux_packet*) ; 

__attribute__((used)) static void FUNC19(struct mp_filter *da)
{
    struct spdifContext *spdif_ctx = da->priv;

    if (!FUNC13(da->ppins[1], da->ppins[0]))
        return;

    struct mp_frame inframe = FUNC15(da->ppins[0]);
    if (inframe.type == MP_FRAME_EOF) {
        FUNC14(da->ppins[1], inframe);
        return;
    } else if (inframe.type != MP_FRAME_PACKET) {
        if (inframe.type) {
            FUNC2(da, "unknown frame type\n");
            FUNC12(da);
        }
        return;
    }

    struct demux_packet *mpkt = inframe.data;
    struct mp_aframe *out = NULL;
    double pts = mpkt->pts;

    AVPacket pkt;
    FUNC16(&pkt, mpkt, NULL);
    pkt.pts = pkt.dts = 0;
    if (!spdif_ctx->lavf_ctx) {
        if (FUNC6(da, &pkt) < 0)
            goto done;
    }
    spdif_ctx->out_buffer_len  = 0;
    int ret = FUNC4(spdif_ctx->lavf_ctx, &pkt);
    FUNC5(spdif_ctx->lavf_ctx->pb);
    if (ret < 0) {
        FUNC2(da, "spdif mux error: '%s'\n", FUNC17(FUNC0(ret)));
        goto done;
    }

    out = FUNC9(spdif_ctx->fmt);
    int samples = spdif_ctx->out_buffer_len / spdif_ctx->sstride;
    if (FUNC10(spdif_ctx->pool, out, samples) < 0) {
        FUNC3(&out);
        goto done;
    }

    uint8_t **data = FUNC8(out);
    if (!data) {
        FUNC3(&out);
        goto done;
    }

    FUNC7(data[0], spdif_ctx->out_buffer, spdif_ctx->out_buffer_len);
    FUNC11(out, pts);

done:
    FUNC18(mpkt);
    if (out) {
        FUNC14(da->ppins[1], FUNC1(MP_FRAME_AUDIO, out));
    } else {
        FUNC12(da);
    }
}