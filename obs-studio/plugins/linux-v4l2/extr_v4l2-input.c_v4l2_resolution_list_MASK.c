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
typedef  int /*<<< orphan*/  uint_fast32_t ;
struct TYPE_2__ {int width; int height; } ;
struct v4l2_frmsizeenum {int type; scalar_t__ index; TYPE_1__ discrete; int /*<<< orphan*/  pixel_format; } ;
struct dstr {int /*<<< orphan*/  array; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
#define  V4L2_FRMSIZE_TYPE_DISCRETE 128 
 int /*<<< orphan*/  VIDIOC_ENUM_FRAMESIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int* v4l2_framesizes ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,struct v4l2_frmsizeenum*) ; 
 int const FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int const) ; 

__attribute__((used)) static void FUNC10(int dev, uint_fast32_t pixelformat,
				 obs_property_t *prop)
{
	struct v4l2_frmsizeenum frmsize;
	frmsize.pixel_format = pixelformat;
	frmsize.index = 0;
	struct dstr buffer;
	FUNC2(&buffer);

	FUNC6(prop);

	FUNC5(prop, FUNC4("LeaveUnchanged"), -1);

	FUNC7(dev, VIDIOC_ENUM_FRAMESIZES, &frmsize);

	switch (frmsize.type) {
	case V4L2_FRMSIZE_TYPE_DISCRETE:
		while (FUNC7(dev, VIDIOC_ENUM_FRAMESIZES, &frmsize) == 0) {
			FUNC3(&buffer, "%dx%d", frmsize.discrete.width,
				    frmsize.discrete.height);
			FUNC5(
				prop, buffer.array,
				FUNC8(frmsize.discrete.width,
						frmsize.discrete.height));
			frmsize.index++;
		}
		break;
	default:
		FUNC0(LOG_INFO, "Stepwise and Continuous framesizes "
			       "are currently hardcoded");

		for (const int *packed = v4l2_framesizes; *packed; ++packed) {
			int width;
			int height;
			FUNC9(&width, &height, *packed);
			FUNC3(&buffer, "%dx%d", width, height);
			FUNC5(prop, buffer.array, *packed);
		}
		break;
	}

	FUNC1(&buffer);
}