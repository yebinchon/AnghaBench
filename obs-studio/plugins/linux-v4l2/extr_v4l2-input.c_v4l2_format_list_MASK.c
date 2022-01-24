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
struct v4l2_fmtdesc {int flags; scalar_t__ index; int /*<<< orphan*/  pixelformat; scalar_t__ description; int /*<<< orphan*/  type; } ;
struct dstr {int /*<<< orphan*/  array; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_FMT_FLAG_EMULATED ; 
 scalar_t__ VIDEO_FORMAT_NONE ; 
 int /*<<< orphan*/  VIDIOC_ENUM_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,struct v4l2_fmtdesc*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(int dev, obs_property_t *prop)
{
	struct v4l2_fmtdesc fmt;
	fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	fmt.index = 0;
	struct dstr buffer;
	FUNC4(&buffer);

	FUNC6(prop);

	while (FUNC7(dev, VIDIOC_ENUM_FMT, &fmt) == 0) {
		FUNC2(&buffer, (char *)fmt.description);
		if (fmt.flags & V4L2_FMT_FLAG_EMULATED)
			FUNC1(&buffer, " (Emulated)");

		if (FUNC8(fmt.pixelformat) !=
		    VIDEO_FORMAT_NONE) {
			FUNC5(prop, buffer.array,
						  fmt.pixelformat);
			FUNC0(LOG_INFO, "Pixelformat: %s (available)",
			     buffer.array);
		} else {
			FUNC0(LOG_INFO, "Pixelformat: %s (unavailable)",
			     buffer.array);
		}
		fmt.index++;
	}

	FUNC3(&buffer);
}