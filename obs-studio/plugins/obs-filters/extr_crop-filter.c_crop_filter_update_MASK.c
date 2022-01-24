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
struct crop_filter_data {int absolute; int left; int top; int right; int bottom; int abs_cx; int abs_cy; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC2(void *data, obs_data_t *settings)
{
	struct crop_filter_data *filter = data;

	filter->absolute = !FUNC0(settings, "relative");
	filter->left = (int)FUNC1(settings, "left");
	filter->top = (int)FUNC1(settings, "top");
	filter->right = (int)FUNC1(settings, "right");
	filter->bottom = (int)FUNC1(settings, "bottom");
	filter->abs_cx = (int)FUNC1(settings, "cx");
	filter->abs_cy = (int)FUNC1(settings, "cy");
}