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
struct demuxer {struct demux_internal* in; } ;
struct demux_stream {double bitrate; size_t type; scalar_t__ selected; } ;
struct demux_internal {int num_streams; int /*<<< orphan*/  lock; TYPE_1__** streams; struct demuxer* d_user; } ;
struct TYPE_2__ {struct demux_stream* ds; } ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,double) ; 
 int STREAM_TYPE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct demuxer *demuxer, double *rates)
{
    struct demux_internal *in = demuxer->in;
    FUNC1(demuxer == in->d_user);

    FUNC2(&in->lock);

    for (int n = 0; n < STREAM_TYPE_COUNT; n++)
        rates[n] = -1;
    for (int n = 0; n < in->num_streams; n++) {
        struct demux_stream *ds = in->streams[n]->ds;
        if (ds->selected && ds->bitrate >= 0)
            rates[ds->type] = FUNC0(0, rates[ds->type]) + ds->bitrate;
    }

    FUNC3(&in->lock);
}