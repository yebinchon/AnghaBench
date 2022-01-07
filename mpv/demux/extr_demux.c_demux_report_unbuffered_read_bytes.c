
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {struct demux_internal* in; } ;
struct demux_internal {int slave_unbuffered_read_bytes; struct demuxer* d_thread; } ;
typedef scalar_t__ int64_t ;


 int assert (int) ;

void demux_report_unbuffered_read_bytes(struct demuxer *demuxer, int64_t new)
{
    struct demux_internal *in = demuxer->in;
    assert(demuxer == in->d_thread);

    in->slave_unbuffered_read_bytes += new;
}
