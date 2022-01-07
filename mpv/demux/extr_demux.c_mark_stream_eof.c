
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_stream {int eof; } ;


 int adjust_seek_range_on_packet (struct demux_stream*,int *) ;
 int back_demux_see_packets (struct demux_stream*) ;
 int wakeup_ds (struct demux_stream*) ;

__attribute__((used)) static void mark_stream_eof(struct demux_stream *ds)
{
    if (!ds->eof) {
        ds->eof = 1;
        adjust_seek_range_on_packet(ds, ((void*)0));
        back_demux_see_packets(ds);
        wakeup_ds(ds);
    }
}
