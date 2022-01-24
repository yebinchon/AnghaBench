#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int width; int height; int pixelformat; int bytesperline; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; int /*<<< orphan*/  type; } ;
typedef  int int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VIDIOC_G_FMT ; 
 int /*<<< orphan*/  VIDIOC_S_FMT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct v4l2_format*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 

int_fast32_t FUNC3(int_fast32_t dev, int *resolution,
			     int *pixelformat, int *bytesperline)
{
	bool set = false;
	int width, height;
	struct v4l2_format fmt;

	if (!dev || !resolution || !pixelformat || !bytesperline)
		return -1;

	/* We need to set the type in order to query the settings */
	fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

	if (FUNC0(dev, VIDIOC_G_FMT, &fmt) < 0)
		return -1;

	if (*resolution != -1) {
		FUNC2(&width, &height, *resolution);
		fmt.fmt.pix.width = width;
		fmt.fmt.pix.height = height;
		set = true;
	}

	if (*pixelformat != -1) {
		fmt.fmt.pix.pixelformat = *pixelformat;
		set = true;
	}

	if (set && (FUNC0(dev, VIDIOC_S_FMT, &fmt) < 0))
		return -1;

	*resolution = FUNC1(fmt.fmt.pix.width, fmt.fmt.pix.height);
	*pixelformat = fmt.fmt.pix.pixelformat;
	*bytesperline = fmt.fmt.pix.bytesperline;
	return 0;
}