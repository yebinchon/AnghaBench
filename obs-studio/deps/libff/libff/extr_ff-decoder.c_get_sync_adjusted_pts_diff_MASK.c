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
struct ff_clock {int dummy; } ;

/* Variables and functions */
 scalar_t__ AV_NOSYNC_THRESHOLD ; 
 double AV_SYNC_THRESHOLD ; 
 scalar_t__ FUNC0 (double) ; 
 double FUNC1 (struct ff_clock*) ; 

__attribute__((used)) static double FUNC2(struct ff_clock *clock, double pts,
                                         double pts_diff)
{
	double new_pts_diff = pts_diff;
	double sync_time = FUNC1(clock);
	double diff = pts - sync_time;
	double sync_threshold;

	sync_threshold = (pts_diff > AV_SYNC_THRESHOLD) ? pts_diff
	                                                : AV_SYNC_THRESHOLD;

	if (FUNC0(diff) < AV_NOSYNC_THRESHOLD) {
		if (diff <= -sync_threshold) {
			new_pts_diff = 0;

		} else if (diff >= sync_threshold) {
			new_pts_diff = 2 * pts_diff;
		}
	}

	return new_pts_diff;
}