#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mp_recorder_sink {TYPE_2__* sh; TYPE_1__* av_stream; int /*<<< orphan*/  max_out_pts; struct mp_recorder* owner; } ;
struct mp_recorder {double rebase_ts; double base_ts; int /*<<< orphan*/  mux; } ;
struct demux_packet {void* pts; void* dts; } ;
struct TYPE_10__ {scalar_t__ duration; int /*<<< orphan*/  stream_index; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int /*<<< orphan*/  index; int /*<<< orphan*/  time_base; } ;
typedef  TYPE_3__ AVPacket ;

/* Variables and functions */
 void* FUNC0 (void*,double) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_recorder*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ STREAM_SUB ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct demux_packet*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mp_recorder_sink *rst,
                       struct demux_packet *pkt)
{
    struct mp_recorder *priv = rst->owner;
    struct demux_packet mpkt = *pkt;

    double diff = priv->rebase_ts - priv->base_ts;
    mpkt.pts = FUNC0(mpkt.pts, diff);
    mpkt.dts = FUNC0(mpkt.dts, diff);

    rst->max_out_pts = FUNC2(rst->max_out_pts, pkt->pts);

    AVPacket avpkt;
    FUNC5(&avpkt, &mpkt, &rst->av_stream->time_base);

    avpkt.stream_index = rst->av_stream->index;

    if (avpkt.duration < 0 && rst->sh->type != STREAM_SUB)
        avpkt.duration = 0;

    AVPacket *new_packet = FUNC4(&avpkt);
    if (!new_packet) {
        FUNC1(priv, "Failed to allocate packet.\n");
        return;
    }

    if (FUNC3(priv->mux, new_packet) < 0)
        FUNC1(priv, "Failed writing packet.\n");
}