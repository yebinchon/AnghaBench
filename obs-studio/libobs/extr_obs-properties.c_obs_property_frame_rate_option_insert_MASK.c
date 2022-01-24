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
struct frame_rate_option {void* description; void* name; } ;
struct frame_rate_data {int /*<<< orphan*/  extra_options; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_PROPERTY_FRAME_RATE ; 
 void* FUNC0 (char const*) ; 
 struct frame_rate_option* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 struct frame_rate_data* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(obs_property_t *p, size_t idx,
					   const char *name,
					   const char *description)
{
	struct frame_rate_data *data =
		FUNC2(p, OBS_PROPERTY_FRAME_RATE);
	if (!data)
		return;

	struct frame_rate_option *opt = FUNC1(data->extra_options, idx);

	opt->name = FUNC0(name);
	opt->description = FUNC0(description);
}