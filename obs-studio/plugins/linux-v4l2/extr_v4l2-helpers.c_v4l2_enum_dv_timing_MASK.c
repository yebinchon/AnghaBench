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
struct v4l2_enum_dv_timings {int index; int /*<<< orphan*/  timings; } ;
struct v4l2_dv_timings {int dummy; } ;
typedef  int /*<<< orphan*/  iter ;
typedef  int int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VIDIOC_ENUM_DV_TIMINGS ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_dv_timings*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_enum_dv_timings*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct v4l2_enum_dv_timings*) ; 

int_fast32_t FUNC4(int_fast32_t dev, struct v4l2_dv_timings *dvt,
				 int index)
{
#if !defined(VIDIOC_ENUM_DV_TIMINGS) || !defined(V4L2_IN_CAP_DV_TIMINGS)
	FUNC0(dev);
	FUNC0(dvt);
	FUNC0(index);
	return -1;
#else
	if (!dev || !dvt)
		return -1;

	struct v4l2_enum_dv_timings iter;
	memset(&iter, 0, sizeof(iter));
	iter.index = index;

	if (v4l2_ioctl(dev, VIDIOC_ENUM_DV_TIMINGS, &iter) < 0)
		return -1;

	memcpy(dvt, &iter.timings, sizeof(struct v4l2_dv_timings));

	return 0;
#endif
}