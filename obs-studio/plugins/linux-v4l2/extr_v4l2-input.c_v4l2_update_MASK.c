#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  obs_data_t ;
struct TYPE_5__ {void* color_range; void* framerate; void* resolution; void* dv_timing; void* standard; void* pixfmt; void* input; scalar_t__ device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* data ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *vptr, obs_data_t *settings)
{
	FUNC0(vptr);

	FUNC6(data);

	if (data->device_id)
		FUNC1(data->device_id);

	data->device_id = FUNC2(FUNC4(settings, "device_id"));
	data->input = FUNC3(settings, "input");
	data->pixfmt = FUNC3(settings, "pixelformat");
	data->standard = FUNC3(settings, "standard");
	data->dv_timing = FUNC3(settings, "dv_timing");
	data->resolution = FUNC3(settings, "resolution");
	data->framerate = FUNC3(settings, "framerate");
	data->color_range = FUNC3(settings, "color_range");

	FUNC7(data, settings);

	FUNC5(data);
}