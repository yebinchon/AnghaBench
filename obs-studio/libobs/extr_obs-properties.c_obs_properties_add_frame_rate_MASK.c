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
struct obs_property {int dummy; } ;
struct frame_rate_data {int /*<<< orphan*/  ranges; int /*<<< orphan*/  extra_options; } ;
typedef  struct obs_property obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_PROPERTY_FRAME_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct frame_rate_data* FUNC1 (struct obs_property*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 struct obs_property* FUNC3 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 

obs_property_t *FUNC4(obs_properties_t *props,
					      const char *name,
					      const char *desc)
{
	if (!props || FUNC2(props, name))
		return NULL;

	struct obs_property *p =
		FUNC3(props, name, desc, OBS_PROPERTY_FRAME_RATE);

	struct frame_rate_data *data = FUNC1(p);
	FUNC0(data->extra_options);
	FUNC0(data->ranges);
	return p;
}