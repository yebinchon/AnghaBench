
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {struct demux_internal* in; } ;
struct demux_internal {scalar_t__ hack_unbuffered_read_bytes; int threading; } ;
typedef scalar_t__ int64_t ;


 int assert (int) ;
 int update_bytes_read (struct demux_internal*) ;

int64_t demux_get_bytes_read_hack(struct demuxer *demuxer)
{
    struct demux_internal *in = demuxer->in;



    assert(!in->threading);

    update_bytes_read(in);

    int64_t res = in->hack_unbuffered_read_bytes;
    in->hack_unbuffered_read_bytes = 0;
    return res;
}
