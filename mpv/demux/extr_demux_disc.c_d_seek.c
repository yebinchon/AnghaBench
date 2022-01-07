
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct priv {int seek_reinit; int slave; scalar_t__ is_cdda; } ;
struct TYPE_4__ {int stream; struct priv* priv; } ;
typedef TYPE_1__ demuxer_t ;


 int MP_VERBOSE (TYPE_1__*,char*,double) ;
 int SEEK_FACTOR ;
 int SEEK_FORCE ;
 int STREAM_CTRL_GET_TIME_LENGTH ;
 int STREAM_CTRL_SEEK_TO_TIME ;
 int demux_seek (int ,double,int) ;
 int stream_control (int ,int ,double*) ;
 int stream_drop_buffers (int ) ;

__attribute__((used)) static void d_seek(demuxer_t *demuxer, double seek_pts, int flags)
{
    struct priv *p = demuxer->priv;

    if (p->is_cdda) {
        demux_seek(p->slave, seek_pts, flags);
        return;
    }

    if (flags & SEEK_FACTOR) {
        double tmp = 0;
        stream_control(demuxer->stream, STREAM_CTRL_GET_TIME_LENGTH, &tmp);
        seek_pts *= tmp;
    }

    MP_VERBOSE(demuxer, "seek to: %f\n", seek_pts);





    demux_seek(p->slave, 0, SEEK_FACTOR | SEEK_FORCE);
    stream_drop_buffers(demuxer->stream);

    double seek_arg[] = {seek_pts, flags};
    stream_control(demuxer->stream, STREAM_CTRL_SEEK_TO_TIME, seek_arg);

    p->seek_reinit = 1;
}
