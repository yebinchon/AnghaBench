
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MPContext {double video_pts; scalar_t__ video_status; TYPE_1__* seek_slave; } ;
struct TYPE_2__ {int demuxer; } ;


 double MP_NOPTS_VALUE ;
 scalar_t__ STATUS_EOF ;
 int demux_block_reading (int ,int) ;
 int demux_seek (int ,double,int ) ;
 double get_track_seek_offset (struct MPContext*,TYPE_1__*) ;

__attribute__((used)) static void handle_delayed_audio_seek(struct MPContext *mpctx)
{
    if (mpctx->seek_slave) {
        if (mpctx->video_pts != MP_NOPTS_VALUE) {


            double pts = mpctx->video_pts +
                            get_track_seek_offset(mpctx, mpctx->seek_slave);
            demux_seek(mpctx->seek_slave->demuxer, pts, 0);
            mpctx->seek_slave = ((void*)0);
        } else if (mpctx->video_status >= STATUS_EOF) {

            demux_block_reading(mpctx->seek_slave->demuxer, 0);
            mpctx->seek_slave = ((void*)0);
        }
    }
}
