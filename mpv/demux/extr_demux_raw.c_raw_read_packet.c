
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct priv {int frame_size; int read_frames; int frame_rate; TYPE_1__* sh; } ;
struct demuxer {TYPE_2__* stream; struct priv* priv; } ;
struct demux_packet {int keyframe; int pos; int pts; int stream; int len; int buffer; } ;
struct TYPE_5__ {scalar_t__ eof; } ;
struct TYPE_4__ {int index; } ;


 int MP_ERR (struct demuxer*,char*) ;
 int demux_packet_shorten (struct demux_packet*,int) ;
 struct demux_packet* new_demux_packet (int) ;
 int stream_read (TYPE_2__*,int ,int ) ;
 int stream_tell (TYPE_2__*) ;

__attribute__((used)) static bool raw_read_packet(struct demuxer *demuxer, struct demux_packet **pkt)
{
    struct priv *p = demuxer->priv;

    if (demuxer->stream->eof)
        return 0;

    struct demux_packet *dp = new_demux_packet(p->frame_size * p->read_frames);
    if (!dp) {
        MP_ERR(demuxer, "Can't read packet.\n");
        return 1;
    }

    dp->keyframe = 1;
    dp->pos = stream_tell(demuxer->stream);
    dp->pts = (dp->pos / p->frame_size) / p->frame_rate;

    int len = stream_read(demuxer->stream, dp->buffer, dp->len);
    demux_packet_shorten(dp, len);

    dp->stream = p->sh->index;
    *pkt = dp;

    return 1;
}
