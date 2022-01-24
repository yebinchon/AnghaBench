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
struct frame_rate_option {void* description; void* name; } ;
struct TYPE_2__ {size_t num; } ;
struct frame_rate_data {TYPE_1__ extra_options; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 size_t DARRAY_INVALID ; 
 int /*<<< orphan*/  OBS_PROPERTY_FRAME_RATE ; 
 void* FUNC0 (char const*) ; 
 struct frame_rate_option* FUNC1 (TYPE_1__) ; 
 struct frame_rate_data* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

size_t FUNC3(obs_property_t *p, const char *name,
					  const char *description)
{
	struct frame_rate_data *data =
		FUNC2(p, OBS_PROPERTY_FRAME_RATE);
	if (!data)
		return DARRAY_INVALID;

	struct frame_rate_option *opt = FUNC1(data->extra_options);

	opt->name = FUNC0(name);
	opt->description = FUNC0(description);

	return data->extra_options.num - 1;
}