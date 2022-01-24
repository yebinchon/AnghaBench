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
typedef  void* uint32_t ;
struct TYPE_4__ {float x; float y; } ;
struct TYPE_3__ {float x; float y; } ;
struct scroll_filter_data {TYPE_2__ offset; TYPE_1__ scroll_speed; int /*<<< orphan*/  sampler; void* loop; void* cy; void* cx; void* limit_cy; void* limit_cx; } ;
struct gs_sampler_info {int /*<<< orphan*/  address_v; int /*<<< orphan*/  address_u; int /*<<< orphan*/  filter; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_ADDRESS_BORDER ; 
 int /*<<< orphan*/  GS_ADDRESS_WRAP ; 
 int /*<<< orphan*/  GS_FILTER_LINEAR ; 
 int /*<<< orphan*/  FUNC0 (struct gs_sampler_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *data, obs_data_t *settings)
{
	struct scroll_filter_data *filter = data;

	filter->limit_cx = FUNC2(settings, "limit_cx");
	filter->limit_cy = FUNC2(settings, "limit_cy");
	filter->cx = (uint32_t)FUNC4(settings, "cx");
	filter->cy = (uint32_t)FUNC4(settings, "cy");

	filter->scroll_speed.x =
		(float)FUNC3(settings, "speed_x");
	filter->scroll_speed.y =
		(float)FUNC3(settings, "speed_y");

	filter->loop = FUNC2(settings, "loop");

	struct gs_sampler_info sampler_info = {
		.filter = GS_FILTER_LINEAR,
		.address_u = filter->loop ? GS_ADDRESS_WRAP : GS_ADDRESS_BORDER,
		.address_v = filter->loop ? GS_ADDRESS_WRAP : GS_ADDRESS_BORDER,
	};

	FUNC5();
	FUNC1(filter->sampler);
	filter->sampler = FUNC0(&sampler_info);
	FUNC6();

	if (filter->scroll_speed.x == 0.0f)
		filter->offset.x = 0.0f;
	if (filter->scroll_speed.y == 0.0f)
		filter->offset.y = 0.0f;
}