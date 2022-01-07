
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {struct demux_internal* in; } ;
struct demux_internal {struct demuxer* d_user; } ;


 int assert (int) ;
 int demux_dealloc (struct demux_internal*) ;
 int demux_shutdown (struct demux_internal*) ;
 int demux_stop_thread (struct demuxer*) ;

void demux_free(struct demuxer *demuxer)
{
    if (!demuxer)
        return;
    struct demux_internal *in = demuxer->in;
    assert(demuxer == in->d_user);

    demux_stop_thread(demuxer);
    demux_shutdown(in);
    demux_dealloc(in);
}
