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
struct TYPE_4__ {char** array; } ;
struct TYPE_3__ {size_t num; char** array; } ;
struct shader_sampler {TYPE_2__ values; TYPE_1__ states; } ;
struct gs_sampler_info {int max_anisotropy; scalar_t__ border_color; void* address_w; void* address_v; void* address_u; int /*<<< orphan*/  filter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct gs_sampler_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 

void FUNC5(struct shader_sampler *ss,
			    struct gs_sampler_info *info)
{
	size_t i;
	FUNC3(info, 0, sizeof(struct gs_sampler_info));

	info->max_anisotropy = 1;

	for (i = 0; i < ss->states.num; i++) {
		const char *state = ss->states.array[i];
		const char *value = ss->values.array[i];

		if (FUNC0(state, "Filter") == 0)
			info->filter = FUNC2(value);
		else if (FUNC0(state, "AddressU") == 0)
			info->address_u = FUNC1(value);
		else if (FUNC0(state, "AddressV") == 0)
			info->address_v = FUNC1(value);
		else if (FUNC0(state, "AddressW") == 0)
			info->address_w = FUNC1(value);
		else if (FUNC0(state, "MaxAnisotropy") == 0)
			info->max_anisotropy = (int)FUNC4(value, NULL, 10);
		else if (FUNC0(state, "BorderColor") == 0)
			info->border_color = FUNC4(value + 1, NULL, 16);
	}
}