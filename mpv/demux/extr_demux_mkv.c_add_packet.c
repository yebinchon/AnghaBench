
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sh_stream {int index; } ;
struct demuxer {TYPE_1__* priv; } ;
struct demux_packet {int stream; } ;
struct TYPE_3__ {int num_packets; int packets; } ;
typedef TYPE_1__ mkv_demuxer_t ;


 int MP_TARRAY_APPEND (TYPE_1__*,int ,int ,struct demux_packet*) ;

__attribute__((used)) static void add_packet(struct demuxer *demuxer, struct sh_stream *stream,
                       struct demux_packet *pkt)
{
    mkv_demuxer_t *mkv_d = demuxer->priv;
    if (!pkt)
        return;

    pkt->stream = stream->index;
    MP_TARRAY_APPEND(mkv_d, mkv_d->packets, mkv_d->num_packets, pkt);
}
