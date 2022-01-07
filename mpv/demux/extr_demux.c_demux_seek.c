
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct demux_internal {int lock; int wakeup; int ts_offset; TYPE_1__* d_user; } ;
struct TYPE_3__ {struct demux_internal* in; } ;
typedef TYPE_1__ demuxer_t ;


 double MP_ADD_PTS (double,int ) ;
 int SEEK_FACTOR ;
 int assert (int) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int queue_seek (struct demux_internal*,double,int,int) ;

int demux_seek(demuxer_t *demuxer, double seek_pts, int flags)
{
    struct demux_internal *in = demuxer->in;
    assert(demuxer == in->d_user);

    pthread_mutex_lock(&in->lock);

    if (!(flags & SEEK_FACTOR))
        seek_pts = MP_ADD_PTS(seek_pts, -in->ts_offset);

    int res = queue_seek(in, seek_pts, flags, 1);

    pthread_cond_signal(&in->wakeup);
    pthread_mutex_unlock(&in->lock);

    return res;
}
