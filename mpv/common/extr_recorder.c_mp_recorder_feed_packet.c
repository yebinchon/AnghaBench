
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_recorder_sink {int proper_eof; int discont; scalar_t__ num_packets; int packets; TYPE_1__* av_stream; struct mp_recorder* owner; } ;
struct mp_recorder {int dts_warning; } ;
struct demux_packet {scalar_t__ dts; int keyframe; } ;
struct TYPE_2__ {int index; } ;


 int MP_ERR (struct mp_recorder*,char*,int ) ;
 scalar_t__ MP_NOPTS_VALUE ;
 int MP_TARRAY_APPEND (struct mp_recorder_sink*,int ,scalar_t__,struct demux_packet*) ;
 int MP_WARN (struct mp_recorder*,char*) ;
 scalar_t__ QUEUE_MAX_PACKETS ;
 int check_restart (struct mp_recorder*) ;
 struct demux_packet* demux_copy_packet (struct demux_packet*) ;
 int mux_packets (struct mp_recorder_sink*,int) ;

void mp_recorder_feed_packet(struct mp_recorder_sink *rst,
                             struct demux_packet *pkt)
{
    struct mp_recorder *priv = rst->owner;

    if (!pkt) {
        rst->proper_eof = 1;
        check_restart(priv);
        mux_packets(rst, 0);
        return;
    }

    if (pkt->dts == MP_NOPTS_VALUE && !priv->dts_warning) {



        MP_WARN(priv, "Source stream misses DTS on at least some packets!\n"
                      "If the target file format requires DTS, the written\n"
                      "file will be invalid.\n");
        priv->dts_warning = 1;
    }

    if (rst->discont && !pkt->keyframe)
        return;
    rst->discont = 0;

    if (rst->num_packets >= QUEUE_MAX_PACKETS) {
        MP_ERR(priv, "Stream %d has too many queued packets; dropping.\n",
               rst->av_stream->index);
        return;
    }

    pkt = demux_copy_packet(pkt);
    if (!pkt)
        return;
    MP_TARRAY_APPEND(rst, rst->packets, rst->num_packets, pkt);

    check_restart(priv);
    mux_packets(rst, 0);
}
