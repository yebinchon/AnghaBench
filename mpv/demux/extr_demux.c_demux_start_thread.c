
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {struct demux_internal* in; } ;
struct demux_internal {int threading; int thread; struct demuxer* d_user; } ;


 int assert (int) ;
 int demux_thread ;
 scalar_t__ pthread_create (int *,int *,int ,struct demux_internal*) ;

void demux_start_thread(struct demuxer *demuxer)
{
    struct demux_internal *in = demuxer->in;
    assert(demuxer == in->d_user);

    if (!in->threading) {
        in->threading = 1;
        if (pthread_create(&in->thread, ((void*)0), demux_thread, in))
            in->threading = 0;
    }
}
