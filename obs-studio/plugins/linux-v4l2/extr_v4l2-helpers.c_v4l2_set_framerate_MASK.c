#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int numerator; int denominator; } ;
struct TYPE_5__ {TYPE_1__ timeperframe; } ;
struct TYPE_6__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {TYPE_3__ parm; int /*<<< orphan*/  type; } ;
typedef  int int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VIDIOC_G_PARM ; 
 int /*<<< orphan*/  VIDIOC_S_PARM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct v4l2_streamparm*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 

int_fast32_t FUNC3(int_fast32_t dev, int *framerate)
{
	bool set = false;
	int num, denom;
	struct v4l2_streamparm par;

	if (!dev || !framerate)
		return -1;

	/* We need to set the type in order to query the stream settings */
	par.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

	if (FUNC0(dev, VIDIOC_G_PARM, &par) < 0)
		return -1;

	if (*framerate != -1) {
		FUNC2(&num, &denom, *framerate);
		par.parm.capture.timeperframe.numerator = num;
		par.parm.capture.timeperframe.denominator = denom;
		set = true;
	}

	if (set && (FUNC0(dev, VIDIOC_S_PARM, &par) < 0))
		return -1;

	*framerate = FUNC1(par.parm.capture.timeperframe.numerator,
				     par.parm.capture.timeperframe.denominator);
	return 0;
}