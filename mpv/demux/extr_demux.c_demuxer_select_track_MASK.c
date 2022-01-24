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
struct sh_stream {int /*<<< orphan*/  index; struct demux_stream* ds; } ;
struct demuxer {struct demux_internal* in; } ;
struct demux_stream {int selected; double back_seek_pos; } ;
struct demux_internal {int tracks_switched; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup; scalar_t__ threading; int /*<<< orphan*/  after_seek; scalar_t__ back_demuxing; int /*<<< orphan*/  ts_offset; } ;

/* Variables and functions */
 double FUNC0 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC3 (struct demux_internal*,struct demux_stream*,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct demux_internal*,struct demux_stream*) ; 

void FUNC8(struct demuxer *demuxer, struct sh_stream *stream,
                          double ref_pts, bool selected)
{
    struct demux_internal *in = demuxer->in;
    struct demux_stream *ds = stream->ds;
    FUNC5(&in->lock);
    ref_pts = FUNC0(ref_pts, -in->ts_offset);
    // don't flush buffers if stream is already selected / unselected
    if (ds->selected != selected) {
        FUNC1(in, "%sselect track %d\n", selected ? "" : "de", stream->index);
        ds->selected = selected;
        FUNC7(in, ds);
        in->tracks_switched = true;
        if (ds->selected) {
            if (in->back_demuxing)
                ds->back_seek_pos = ref_pts;
            if (!in->after_seek)
                FUNC3(in, ds, ref_pts);
        }
        if (in->threading) {
            FUNC4(&in->wakeup);
        } else {
            FUNC2(in);
        }
    }
    FUNC6(&in->lock);
}