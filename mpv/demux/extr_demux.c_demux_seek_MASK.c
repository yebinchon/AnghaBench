#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct demux_internal {int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  ts_offset; TYPE_1__* d_user; } ;
struct TYPE_3__ {struct demux_internal* in; } ;
typedef  TYPE_1__ demuxer_t ;

/* Variables and functions */
 double FUNC0 (double,int /*<<< orphan*/ ) ; 
 int SEEK_FACTOR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct demux_internal*,double,int,int) ; 

int FUNC6(demuxer_t *demuxer, double seek_pts, int flags)
{
    struct demux_internal *in = demuxer->in;
    FUNC1(demuxer == in->d_user);

    FUNC3(&in->lock);

    if (!(flags & SEEK_FACTOR))
        seek_pts = FUNC0(seek_pts, -in->ts_offset);

    int res = FUNC5(in, seek_pts, flags, true);

    FUNC2(&in->wakeup);
    FUNC4(&in->lock);

    return res;
}