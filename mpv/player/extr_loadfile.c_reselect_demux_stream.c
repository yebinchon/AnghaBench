
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track {scalar_t__ type; int selected; int stream; int demuxer; } ;
struct MPContext {struct track* seek_slave; } ;


 double MP_NOPTS_VALUE ;
 scalar_t__ STREAM_SUB ;
 int demuxer_select_track (int ,int ,double,int ) ;
 double get_current_time (struct MPContext*) ;
 scalar_t__ get_track_seek_offset (struct MPContext*,struct track*) ;

void reselect_demux_stream(struct MPContext *mpctx, struct track *track)
{
    if (!track->stream)
        return;
    double pts = get_current_time(mpctx);
    if (pts != MP_NOPTS_VALUE) {
        pts += get_track_seek_offset(mpctx, track);
        if (track->type == STREAM_SUB)
            pts -= 10.0;
    }
    demuxer_select_track(track->demuxer, track->stream, pts, track->selected);
    if (track == mpctx->seek_slave)
        mpctx->seek_slave = ((void*)0);
}
