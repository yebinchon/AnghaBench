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
struct path_data {int type; void* filter; void* default_path; } ;
struct obs_property {int dummy; } ;
typedef  struct obs_property obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  enum obs_path_type { ____Placeholder_obs_path_type } obs_path_type ;

/* Variables and functions */
 scalar_t__ OBS_PATH_FILE ; 
 int /*<<< orphan*/  OBS_PROPERTY_PATH ; 
 void* FUNC0 (char const*) ; 
 struct path_data* FUNC1 (struct obs_property*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 struct obs_property* FUNC3 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 

obs_property_t *FUNC4(obs_properties_t *props,
					const char *name, const char *desc,
					enum obs_path_type type,
					const char *filter,
					const char *default_path)
{
	if (!props || FUNC2(props, name))
		return NULL;

	struct obs_property *p = FUNC3(props, name, desc, OBS_PROPERTY_PATH);
	struct path_data *data = FUNC1(p);
	data->type = type;
	data->default_path = FUNC0(default_path);

	if (data->type == OBS_PATH_FILE)
		data->filter = FUNC0(filter);

	return p;
}