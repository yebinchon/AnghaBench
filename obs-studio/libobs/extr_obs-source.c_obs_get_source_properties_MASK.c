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
struct obs_source_info {int /*<<< orphan*/ * (* get_properties ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  type_data; int /*<<< orphan*/ * (* get_properties2 ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct obs_source_info const*) ; 
 struct obs_source_info* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

obs_properties_t *FUNC6(const char *id)
{
	const struct obs_source_info *info = FUNC1(id);
	if (info && (info->get_properties || info->get_properties2)) {
		obs_data_t *defaults = FUNC0(info);
		obs_properties_t *props;

		if (info->get_properties2)
			props = info->get_properties2(NULL, info->type_data);
		else
			props = info->get_properties(NULL);

		FUNC3(props, defaults);
		FUNC2(defaults);
		return props;
	}
	return NULL;
}