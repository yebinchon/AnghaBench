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
struct list_data {int format; int type; } ;
typedef  struct obs_property obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  enum obs_combo_type { ____Placeholder_obs_combo_type } obs_combo_type ;
typedef  enum obs_combo_format { ____Placeholder_obs_combo_format } obs_combo_format ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int OBS_COMBO_FORMAT_STRING ; 
 int OBS_COMBO_TYPE_EDITABLE ; 
 int /*<<< orphan*/  OBS_PROPERTY_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct list_data* FUNC1 (struct obs_property*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 struct obs_property* FUNC3 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 

obs_property_t *FUNC4(obs_properties_t *props,
					const char *name, const char *desc,
					enum obs_combo_type type,
					enum obs_combo_format format)
{
	if (!props || FUNC2(props, name))
		return NULL;

	if (type == OBS_COMBO_TYPE_EDITABLE &&
	    format != OBS_COMBO_FORMAT_STRING) {
		FUNC0(LOG_WARNING,
		     "List '%s', error: Editable combo boxes "
		     "must be of the 'string' type",
		     name);
		return NULL;
	}

	struct obs_property *p = FUNC3(props, name, desc, OBS_PROPERTY_LIST);
	struct list_data *data = FUNC1(p);
	data->format = format;
	data->type = type;

	return p;
}