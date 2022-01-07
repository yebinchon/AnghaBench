
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_packet {scalar_t__ len; int * buffer; int * avpacket; int is_cached; } ;


 int assert (int) ;
 int av_packet_unref (int *) ;
 int talloc_free (int *) ;

void demux_packet_unref_contents(struct demux_packet *dp)
{
    if (dp->avpacket) {
        assert(!dp->is_cached);
        av_packet_unref(dp->avpacket);
        talloc_free(dp->avpacket);
        dp->avpacket = ((void*)0);
        dp->buffer = ((void*)0);
        dp->len = 0;
    }
}
