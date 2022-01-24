#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct group_data {int type; TYPE_1__* content; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
struct TYPE_10__ {int /*<<< orphan*/ * parent; } ;
typedef  TYPE_1__ obs_properties_t ;
typedef  enum obs_group_type { ____Placeholder_obs_group_type } obs_group_type ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_PROPERTY_GROUP ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 struct group_data* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,char const*,char const*,int /*<<< orphan*/ ) ; 

obs_property_t *FUNC5(obs_properties_t *props,
					 const char *name, const char *desc,
					 enum obs_group_type type,
					 obs_properties_t *group)
{
	if (!props || FUNC3(props, name))
		return NULL;
	if (!group)
		return NULL;

	/* Prevent recursion. */
	if (props == group)
		return NULL;
	if (FUNC1(props, group))
		return NULL;

	/* Prevent duplicate properties */
	if (FUNC0(props, group))
		return NULL;

	obs_property_t *p = FUNC4(props, name, desc, OBS_PROPERTY_GROUP);
	group->parent = p;

	struct group_data *data = FUNC2(p);
	data->type = type;
	data->content = group;
	return p;
}