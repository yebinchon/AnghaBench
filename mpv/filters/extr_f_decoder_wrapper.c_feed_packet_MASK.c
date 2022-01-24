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
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ type; struct demux_packet* data; } ;
struct TYPE_13__ {scalar_t__ play_dir; scalar_t__ recorder_sink; scalar_t__ attempt_framedrops; } ;
struct TYPE_12__ {scalar_t__ type; } ;
struct priv {double start_pts; double start; int has_broken_packet_pts; double first_packet_pdts; int preroll_discard; int packet_fed; int packets_without_output; TYPE_6__ packet; TYPE_4__* decoder; TYPE_3__* codec; TYPE_2__ public; struct demux_packet* new_segment; int /*<<< orphan*/  f; int /*<<< orphan*/  demux; TYPE_1__ decoded_coverart; } ;
struct demux_packet {double pts; double dts; scalar_t__ back_preroll; } ;
struct TYPE_16__ {int /*<<< orphan*/ * pins; } ;
struct TYPE_15__ {TYPE_5__* f; int /*<<< orphan*/  (* control ) (TYPE_5__*,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  avi_dts; } ;

/* Variables and functions */
 TYPE_6__ MP_EOF_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct priv*,char*) ; 
 scalar_t__ MP_FRAME_EOF ; 
 scalar_t__ MP_FRAME_PACKET ; 
 double MP_NOPTS_VALUE ; 
 TYPE_6__ MP_NO_FRAME ; 
 int /*<<< orphan*/  VDCTRL_SET_FRAMEDROP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct priv*,TYPE_6__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_6__) ; 
 TYPE_6__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct demux_packet*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC10(struct priv *p)
{
    if (!p->decoder || !FUNC5(p->decoder->f->pins[0]))
        return;

    if (p->decoded_coverart.type)
        return;

    if (!p->packet.type && !p->new_segment) {
        p->packet = FUNC7(p->demux);
        if (!p->packet.type)
            return;
        if (p->packet.type != MP_FRAME_EOF && p->packet.type != MP_FRAME_PACKET) {
            FUNC0(p, "invalid frame type from demuxer\n");
            FUNC4(&p->packet);
            FUNC3(p->f);
            return;
        }
    }

    if (!p->packet.type)
        return;

    // Flush current data if the packet is a new segment.
    if (FUNC2(p, p->packet)) {
        FUNC1(!p->new_segment);
        p->new_segment = p->packet.data;
        p->packet = MP_EOF_FRAME;
    }

    FUNC1(p->packet.type == MP_FRAME_PACKET || p->packet.type == MP_FRAME_EOF);
    struct demux_packet *packet =
        p->packet.type == MP_FRAME_PACKET ? p->packet.data : NULL;

    // For video framedropping, including parts of the hr-seek logic.
    if (p->decoder->control) {
        double start_pts = p->start_pts;
        if (p->start != MP_NOPTS_VALUE && (start_pts == MP_NOPTS_VALUE ||
                                           p->start > start_pts))
            start_pts = p->start;

        int framedrop_type = 0;

        if (p->public.attempt_framedrops)
            framedrop_type = 1;

        if (start_pts != MP_NOPTS_VALUE && packet && p->public.play_dir > 0 &&
            packet->pts < start_pts - .005 && !p->has_broken_packet_pts)
            framedrop_type = 2;

        p->decoder->control(p->decoder->f, VDCTRL_SET_FRAMEDROP, &framedrop_type);
    }

    if (p->public.recorder_sink)
        FUNC8(p->public.recorder_sink, packet);

    double pkt_pts = packet ? packet->pts : MP_NOPTS_VALUE;
    double pkt_dts = packet ? packet->dts : MP_NOPTS_VALUE;

    if (pkt_pts == MP_NOPTS_VALUE)
        p->has_broken_packet_pts = 1;

    if (packet && packet->dts == MP_NOPTS_VALUE && !p->codec->avi_dts)
        packet->dts = packet->pts;

    double pkt_pdts = pkt_pts == MP_NOPTS_VALUE ? pkt_dts : pkt_pts;
    if (p->first_packet_pdts == MP_NOPTS_VALUE)
        p->first_packet_pdts = pkt_pdts;

    if (packet && packet->back_preroll) {
        p->preroll_discard = true;
        packet->pts = packet->dts = MP_NOPTS_VALUE;
    }

    FUNC6(p->decoder->f->pins[0], p->packet);
    p->packet_fed = true;
    p->packet = MP_NO_FRAME;

    p->packets_without_output += 1;
}