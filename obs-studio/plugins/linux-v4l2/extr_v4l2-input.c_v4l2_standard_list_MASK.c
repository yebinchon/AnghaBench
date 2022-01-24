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
struct v4l2_standard {int id; scalar_t__ index; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDIOC_ENUMSTD ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct v4l2_standard*) ; 

__attribute__((used)) static void FUNC4(int dev, obs_property_t *prop)
{
	struct v4l2_standard std;
	std.index = 0;

	FUNC2(prop);

	FUNC1(prop, FUNC0("LeaveUnchanged"), -1);

	while (FUNC3(dev, VIDIOC_ENUMSTD, &std) == 0) {
		FUNC1(prop, (char *)std.name, std.id);
		std.index++;
	}
}