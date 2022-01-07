
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {int cancel; } ;


 int demux_free (struct demuxer*) ;
 int mp_cancel_trigger (int ) ;

void demux_cancel_and_free(struct demuxer *demuxer)
{
    if (!demuxer)
        return;
    mp_cancel_trigger(demuxer->cancel);
    demux_free(demuxer);
}
