
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mp_recorder_sink {TYPE_2__* sh; TYPE_1__* av_stream; int max_out_pts; struct mp_recorder* owner; } ;
struct mp_recorder {double rebase_ts; double base_ts; int mux; } ;
struct demux_packet {void* pts; void* dts; } ;
struct TYPE_10__ {scalar_t__ duration; int stream_index; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int index; int time_base; } ;
typedef TYPE_3__ AVPacket ;


 void* MP_ADD_PTS (void*,double) ;
 int MP_ERR (struct mp_recorder*,char*) ;
 int MP_PTS_MAX (int ,void*) ;
 scalar_t__ STREAM_SUB ;
 scalar_t__ av_interleaved_write_frame (int ,TYPE_3__*) ;
 TYPE_3__* av_packet_clone (TYPE_3__*) ;
 int mp_set_av_packet (TYPE_3__*,struct demux_packet*,int *) ;

__attribute__((used)) static void mux_packet(struct mp_recorder_sink *rst,
                       struct demux_packet *pkt)
{
    struct mp_recorder *priv = rst->owner;
    struct demux_packet mpkt = *pkt;

    double diff = priv->rebase_ts - priv->base_ts;
    mpkt.pts = MP_ADD_PTS(mpkt.pts, diff);
    mpkt.dts = MP_ADD_PTS(mpkt.dts, diff);

    rst->max_out_pts = MP_PTS_MAX(rst->max_out_pts, pkt->pts);

    AVPacket avpkt;
    mp_set_av_packet(&avpkt, &mpkt, &rst->av_stream->time_base);

    avpkt.stream_index = rst->av_stream->index;

    if (avpkt.duration < 0 && rst->sh->type != STREAM_SUB)
        avpkt.duration = 0;

    AVPacket *new_packet = av_packet_clone(&avpkt);
    if (!new_packet) {
        MP_ERR(priv, "Failed to allocate packet.\n");
        return;
    }

    if (av_interleaved_write_frame(priv->mux, new_packet) < 0)
        MP_ERR(priv, "Failed writing packet.\n");
}
