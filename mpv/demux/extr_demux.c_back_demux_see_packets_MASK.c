#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct demux_stream {int back_resuming; scalar_t__ back_resume_dts; scalar_t__ back_resume_pos; int need_wakeup; scalar_t__ back_restarting; scalar_t__ global_correct_pos; scalar_t__ global_correct_dts; struct demux_packet* reader_head; int /*<<< orphan*/  selected; struct demux_internal* in; } ;
struct demux_packet {scalar_t__ dts; scalar_t__ pos; } ;
struct demux_internal {int /*<<< orphan*/  back_demuxing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demux_internal*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC4 (struct demux_stream*) ; 
 int /*<<< orphan*/  FUNC5 (struct demux_stream*) ; 

__attribute__((used)) static void FUNC6(struct demux_stream *ds)
{
    struct demux_internal *in = ds->in;

    if (!ds->selected || !in->back_demuxing)
        return;

    FUNC2(!(ds->back_resuming && ds->back_restarting));

    if (!ds->global_correct_dts && !ds->global_correct_pos) {
        FUNC0(in, "Can't demux backward due to demuxer problems.\n");
        FUNC3(in);
        return;
    }

    while (ds->back_resuming && ds->reader_head) {
        struct demux_packet *head = ds->reader_head;
        if ((ds->global_correct_dts && head->dts == ds->back_resume_dts) ||
            (ds->global_correct_pos && head->pos == ds->back_resume_pos))
        {
            ds->back_resuming = false;
            ds->need_wakeup = true;
            FUNC5(ds); // probably
            break;
        }
        FUNC1(ds);
    }

    if (ds->back_restarting)
        FUNC4(ds);
}