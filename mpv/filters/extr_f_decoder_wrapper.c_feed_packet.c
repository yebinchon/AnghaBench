
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ type; struct demux_packet* data; } ;
struct TYPE_13__ {scalar_t__ play_dir; scalar_t__ recorder_sink; scalar_t__ attempt_framedrops; } ;
struct TYPE_12__ {scalar_t__ type; } ;
struct priv {double start_pts; double start; int has_broken_packet_pts; double first_packet_pdts; int preroll_discard; int packet_fed; int packets_without_output; TYPE_6__ packet; TYPE_4__* decoder; TYPE_3__* codec; TYPE_2__ public; struct demux_packet* new_segment; int f; int demux; TYPE_1__ decoded_coverart; } ;
struct demux_packet {double pts; double dts; scalar_t__ back_preroll; } ;
struct TYPE_16__ {int * pins; } ;
struct TYPE_15__ {TYPE_5__* f; int (* control ) (TYPE_5__*,int ,int*) ;} ;
struct TYPE_14__ {int avi_dts; } ;


 TYPE_6__ MP_EOF_FRAME ;
 int MP_ERR (struct priv*,char*) ;
 scalar_t__ MP_FRAME_EOF ;
 scalar_t__ MP_FRAME_PACKET ;
 double MP_NOPTS_VALUE ;
 TYPE_6__ MP_NO_FRAME ;
 int VDCTRL_SET_FRAMEDROP ;
 int assert (int) ;
 scalar_t__ is_new_segment (struct priv*,TYPE_6__) ;
 int mp_filter_internal_mark_failed (int ) ;
 int mp_frame_unref (TYPE_6__*) ;
 int mp_pin_in_needs_data (int ) ;
 int mp_pin_in_write (int ,TYPE_6__) ;
 TYPE_6__ mp_pin_out_read (int ) ;
 int mp_recorder_feed_packet (scalar_t__,struct demux_packet*) ;
 int stub1 (TYPE_5__*,int ,int*) ;

__attribute__((used)) static void feed_packet(struct priv *p)
{
    if (!p->decoder || !mp_pin_in_needs_data(p->decoder->f->pins[0]))
        return;

    if (p->decoded_coverart.type)
        return;

    if (!p->packet.type && !p->new_segment) {
        p->packet = mp_pin_out_read(p->demux);
        if (!p->packet.type)
            return;
        if (p->packet.type != MP_FRAME_EOF && p->packet.type != MP_FRAME_PACKET) {
            MP_ERR(p, "invalid frame type from demuxer\n");
            mp_frame_unref(&p->packet);
            mp_filter_internal_mark_failed(p->f);
            return;
        }
    }

    if (!p->packet.type)
        return;


    if (is_new_segment(p, p->packet)) {
        assert(!p->new_segment);
        p->new_segment = p->packet.data;
        p->packet = MP_EOF_FRAME;
    }

    assert(p->packet.type == MP_FRAME_PACKET || p->packet.type == MP_FRAME_EOF);
    struct demux_packet *packet =
        p->packet.type == MP_FRAME_PACKET ? p->packet.data : ((void*)0);


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
        mp_recorder_feed_packet(p->public.recorder_sink, packet);

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
        p->preroll_discard = 1;
        packet->pts = packet->dts = MP_NOPTS_VALUE;
    }

    mp_pin_in_write(p->decoder->f->pins[0], p->packet);
    p->packet_fed = 1;
    p->packet = MP_NO_FRAME;

    p->packets_without_output += 1;
}
