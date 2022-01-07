
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_stream {int back_resuming; scalar_t__ back_resume_dts; scalar_t__ back_resume_pos; int need_wakeup; scalar_t__ back_restarting; scalar_t__ global_correct_pos; scalar_t__ global_correct_dts; struct demux_packet* reader_head; int selected; struct demux_internal* in; } ;
struct demux_packet {scalar_t__ dts; scalar_t__ pos; } ;
struct demux_internal {int back_demuxing; } ;


 int MP_ERR (struct demux_internal*,char*) ;
 int advance_reader_head (struct demux_stream*) ;
 int assert (int) ;
 int error_on_backward_demuxing (struct demux_internal*) ;
 int find_backward_restart_pos (struct demux_stream*) ;
 int wakeup_ds (struct demux_stream*) ;

__attribute__((used)) static void back_demux_see_packets(struct demux_stream *ds)
{
    struct demux_internal *in = ds->in;

    if (!ds->selected || !in->back_demuxing)
        return;

    assert(!(ds->back_resuming && ds->back_restarting));

    if (!ds->global_correct_dts && !ds->global_correct_pos) {
        MP_ERR(in, "Can't demux backward due to demuxer problems.\n");
        error_on_backward_demuxing(in);
        return;
    }

    while (ds->back_resuming && ds->reader_head) {
        struct demux_packet *head = ds->reader_head;
        if ((ds->global_correct_dts && head->dts == ds->back_resume_dts) ||
            (ds->global_correct_pos && head->pos == ds->back_resume_pos))
        {
            ds->back_resuming = 0;
            ds->need_wakeup = 1;
            wakeup_ds(ds);
            break;
        }
        advance_reader_head(ds);
    }

    if (ds->back_restarting)
        find_backward_restart_pos(ds);
}
