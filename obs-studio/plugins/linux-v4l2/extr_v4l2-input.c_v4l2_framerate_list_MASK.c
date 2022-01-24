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
typedef  void* uint_fast32_t ;
struct TYPE_2__ {float numerator; scalar_t__ denominator; } ;
struct v4l2_frmivalenum {int type; scalar_t__ index; TYPE_1__ discrete; void* height; void* width; void* pixel_format; } ;
struct dstr {int /*<<< orphan*/  array; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
#define  V4L2_FRMIVAL_TYPE_DISCRETE 128 
 int /*<<< orphan*/  VIDIOC_ENUM_FRAMEINTERVALS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,char*,float) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int* v4l2_framerates ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,struct v4l2_frmivalenum*) ; 
 int FUNC8 (float,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int const) ; 

__attribute__((used)) static void FUNC10(int dev, uint_fast32_t pixelformat,
				uint_fast32_t width, uint_fast32_t height,
				obs_property_t *prop)
{
	struct v4l2_frmivalenum frmival;
	frmival.pixel_format = pixelformat;
	frmival.width = width;
	frmival.height = height;
	frmival.index = 0;
	struct dstr buffer;
	FUNC2(&buffer);

	FUNC6(prop);

	FUNC5(prop, FUNC4("LeaveUnchanged"), -1);

	FUNC7(dev, VIDIOC_ENUM_FRAMEINTERVALS, &frmival);

	switch (frmival.type) {
	case V4L2_FRMIVAL_TYPE_DISCRETE:
		while (FUNC7(dev, VIDIOC_ENUM_FRAMEINTERVALS, &frmival) ==
		       0) {
			float fps = (float)frmival.discrete.denominator /
				    frmival.discrete.numerator;
			int pack =
				FUNC8(frmival.discrete.numerator,
						frmival.discrete.denominator);
			FUNC3(&buffer, "%.2f", fps);
			FUNC5(prop, buffer.array, pack);
			frmival.index++;
		}
		break;
	default:
		FUNC0(LOG_INFO, "Stepwise and Continuous framerates "
			       "are currently hardcoded");

		for (const int *packed = v4l2_framerates; *packed; ++packed) {
			int num;
			int denom;
			FUNC9(&num, &denom, *packed);
			float fps = (float)denom / num;
			FUNC3(&buffer, "%.2f", fps);
			FUNC5(prop, buffer.array, *packed);
		}
		break;
	}

	FUNC1(&buffer);
}