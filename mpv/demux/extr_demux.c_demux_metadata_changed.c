
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct demux_internal {int lock; TYPE_1__* d_thread; } ;
struct TYPE_3__ {int metadata; struct demux_internal* in; } ;
typedef TYPE_1__ demuxer_t ;


 int MP_NOPTS_VALUE ;
 int add_timed_metadata (struct demux_internal*,int ,int *,int ) ;
 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void demux_metadata_changed(demuxer_t *demuxer)
{
    assert(demuxer == demuxer->in->d_thread);
    struct demux_internal *in = demuxer->in;

    pthread_mutex_lock(&in->lock);
    add_timed_metadata(in, demuxer->metadata, ((void*)0), MP_NOPTS_VALUE);
    pthread_mutex_unlock(&in->lock);
}
