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
struct v4l2_dv_timings {int dummy; } ;
typedef  int int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDIOC_S_DV_TIMINGS ; 
 scalar_t__ FUNC0 (int,struct v4l2_dv_timings*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_dv_timings*) ; 

int_fast32_t FUNC2(int_fast32_t dev, int *timing)
{
	if (!dev || !timing)
		return -1;

	if (*timing == -1)
		return 0;

	struct v4l2_dv_timings dvt;

	if (FUNC0(dev, &dvt, *timing) < 0)
		return -1;

	if (FUNC1(dev, VIDIOC_S_DV_TIMINGS, &dvt) < 0)
		return -1;

	return 0;
}