
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {int dummy; } ;
struct MPContext {int dummy; } ;


 int add_stream_track (struct MPContext*,struct demuxer*,int ) ;
 int demux_get_num_stream (struct demuxer*) ;
 int demux_get_stream (struct demuxer*,int) ;

void add_demuxer_tracks(struct MPContext *mpctx, struct demuxer *demuxer)
{
    for (int n = 0; n < demux_get_num_stream(demuxer); n++)
        add_stream_track(mpctx, demuxer, demux_get_stream(demuxer, n));
}
