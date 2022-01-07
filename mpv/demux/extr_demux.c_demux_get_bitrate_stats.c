
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demuxer {struct demux_internal* in; } ;
struct demux_stream {double bitrate; size_t type; scalar_t__ selected; } ;
struct demux_internal {int num_streams; int lock; TYPE_1__** streams; struct demuxer* d_user; } ;
struct TYPE_2__ {struct demux_stream* ds; } ;


 double MPMAX (int ,double) ;
 int STREAM_TYPE_COUNT ;
 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void demux_get_bitrate_stats(struct demuxer *demuxer, double *rates)
{
    struct demux_internal *in = demuxer->in;
    assert(demuxer == in->d_user);

    pthread_mutex_lock(&in->lock);

    for (int n = 0; n < STREAM_TYPE_COUNT; n++)
        rates[n] = -1;
    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *ds = in->streams[n]->ds;
        if (ds->selected && ds->bitrate >= 0)
            rates[ds->type] = MPMAX(0, rates[ds->type]) + ds->bitrate;
    }

    pthread_mutex_unlock(&in->lock);
}
