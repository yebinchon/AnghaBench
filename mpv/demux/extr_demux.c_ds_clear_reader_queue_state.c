
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_stream {int eof; int need_wakeup; int * reader_head; } ;



__attribute__((used)) static void ds_clear_reader_queue_state(struct demux_stream *ds)
{
    ds->reader_head = ((void*)0);
    ds->eof = 0;
    ds->need_wakeup = 1;
}
