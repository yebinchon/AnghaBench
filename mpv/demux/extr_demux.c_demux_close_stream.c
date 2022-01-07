
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct demuxer {TYPE_2__* stream; int cancel; int global; struct demux_internal* in; } ;
struct demux_internal {TYPE_1__* d_user; int owns_stream; struct demuxer* d_thread; int threading; } ;
struct TYPE_5__ {int cancel; } ;
struct TYPE_4__ {TYPE_2__* stream; } ;


 int MP_VERBOSE (struct demuxer*,char*) ;
 int assert (int) ;
 int free_stream (TYPE_2__*) ;
 TYPE_2__* stream_memory_open (int ,int *,int ) ;

void demux_close_stream(struct demuxer *demuxer)
{
    struct demux_internal *in = demuxer->in;
    assert(!in->threading && demuxer == in->d_thread);

    if (!demuxer->stream || !in->owns_stream)
        return;

    MP_VERBOSE(demuxer, "demuxer read all data; closing stream\n");
    free_stream(demuxer->stream);
    demuxer->stream = stream_memory_open(demuxer->global, ((void*)0), 0);
    demuxer->stream->cancel = demuxer->cancel;
    in->d_user->stream = demuxer->stream;
}
