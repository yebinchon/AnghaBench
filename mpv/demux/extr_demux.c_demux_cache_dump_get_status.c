
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {struct demux_internal* in; } ;
struct demux_internal {int dumper_status; int lock; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int demux_cache_dump_get_status(struct demuxer *demuxer)
{
    struct demux_internal *in = demuxer->in;
    pthread_mutex_lock(&in->lock);
    int status = in->dumper_status;
    pthread_mutex_unlock(&in->lock);
    return status;
}
