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
struct v4l2_input {int /*<<< orphan*/  index; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  int_fast32_t ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  VIDIOC_ENUMINPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_input*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_input*) ; 

__attribute__((used)) static void FUNC5(int_fast32_t dev, obs_property_t *prop)
{
	struct v4l2_input in;
	FUNC1(&in, 0, sizeof(in));

	FUNC3(prop);

	while (FUNC4(dev, VIDIOC_ENUMINPUT, &in) == 0) {
		FUNC2(prop, (char *)in.name, in.index);
		FUNC0(LOG_INFO, "Found input '%s' (Index %d)", in.name,
		     in.index);
		in.index++;
	}
}