#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timed_metadata {int dummy; } ;
struct demux_internal {double last_playback_pts; int force_metadata_update; int events; int /*<<< orphan*/  lock; int /*<<< orphan*/  duration; int /*<<< orphan*/  ts_offset; int /*<<< orphan*/  threading; TYPE_1__* d_user; } ;
struct TYPE_5__ {int events; int /*<<< orphan*/  duration; struct demux_internal* in; } ;
typedef  TYPE_1__ demuxer_t ;

/* Variables and functions */
 int DEMUX_EVENT_DURATION ; 
 int DEMUX_EVENT_METADATA ; 
 int DEMUX_EVENT_STREAMS ; 
 double FUNC0 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct timed_metadata* FUNC3 (struct demux_internal*,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct demux_internal*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct timed_metadata*) ; 

void FUNC8(demuxer_t *demuxer, double pts)
{
    FUNC1(demuxer == demuxer->in->d_user);
    struct demux_internal *in = demuxer->in;

    if (!in->threading)
        FUNC6(in);

    FUNC4(&in->lock);

    pts = FUNC0(pts, -in->ts_offset);

    struct timed_metadata *prev = FUNC3(in, in->last_playback_pts);
    struct timed_metadata *cur = FUNC3(in, pts);
    if (prev != cur || in->force_metadata_update) {
        in->force_metadata_update = false;
        FUNC7(demuxer, cur);
        demuxer->events |= DEMUX_EVENT_METADATA;
    }

    in->last_playback_pts = pts;

    demuxer->events |= in->events;
    in->events = 0;
    if (demuxer->events & (DEMUX_EVENT_METADATA | DEMUX_EVENT_STREAMS))
        FUNC2(demuxer);
    if (demuxer->events & DEMUX_EVENT_DURATION)
        demuxer->duration = in->duration;

    FUNC5(&in->lock);
}