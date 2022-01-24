#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct demux_stream {int skip_to_keyframe; int /*<<< orphan*/  selected; int /*<<< orphan*/  refreshing; int /*<<< orphan*/  type; struct demux_packet* reader_head; int /*<<< orphan*/  base_ts; } ;
struct demux_queue {int dummy; } ;
struct demux_packet {int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; } ;
struct demux_internal {int num_streams; int seeking; TYPE_1__** streams; scalar_t__ seek_pts; int /*<<< orphan*/  seek_flags; struct demux_cached_range* current_range; } ;
struct demux_cached_range {scalar_t__ seek_end; struct demux_queue** streams; } ;
struct TYPE_2__ {struct demux_stream* ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_internal*,char*,...) ; 
 int /*<<< orphan*/  SEEK_HR ; 
 int /*<<< orphan*/  FUNC2 (struct demux_internal*,struct demux_cached_range*,double*,int*) ; 
 struct demux_packet* FUNC3 (struct demux_queue*,double,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct demux_internal*,struct demux_cached_range*) ; 

__attribute__((used)) static void FUNC6(struct demux_internal *in,
                               struct demux_cached_range *range,
                               double pts, int flags)
{
    FUNC2(in, range, &pts, &flags);

    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *ds = in->streams[n]->ds;
        struct demux_queue *queue = range->streams[n];

        struct demux_packet *target = FUNC3(queue, pts, flags);
        ds->reader_head = target;
        ds->skip_to_keyframe = !target;
        if (ds->reader_head)
            ds->base_ts = FUNC0(ds->reader_head->pts, ds->reader_head->dts);

        FUNC1(in, "seeking stream %d (%s) to ",
                   n, FUNC4(ds->type));

        if (target) {
            FUNC1(in, "packet %f/%f\n", target->pts, target->dts);
        } else {
            FUNC1(in, "nothing\n");
        }
    }

    // If we seek to another range, we want to seek the low level demuxer to
    // there as well, because reader and demuxer queue must be the same.
    if (in->current_range != range) {
        FUNC5(in, range);

        in->seeking = true;
        in->seek_flags = SEEK_HR;
        in->seek_pts = range->seek_end - 1.0;

        // When new packets are being appended, they could overlap with the old
        // range due to demuxer seek imprecisions, or because the queue contains
        // packets past the seek target but before the next seek target. Don't
        // append them twice, instead skip them until new packets are found.
        for (int n = 0; n < in->num_streams; n++) {
            struct demux_stream *ds = in->streams[n]->ds;

            ds->refreshing = ds->selected;
        }

        FUNC1(in, "resuming demuxer to end of cached range\n");
    }
}