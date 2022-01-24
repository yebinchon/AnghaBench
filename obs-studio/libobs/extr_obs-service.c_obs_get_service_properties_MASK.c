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
struct obs_service_info {int /*<<< orphan*/ * (* get_properties ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 struct obs_service_info* FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct obs_service_info const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

obs_properties_t *FUNC5(const char *id)
{
	const struct obs_service_info *info = FUNC0(id);
	if (info && info->get_properties) {
		obs_data_t *defaults = FUNC1(info);
		obs_properties_t *properties;

		properties = info->get_properties(NULL);
		FUNC3(properties, defaults);
		FUNC2(defaults);
		return properties;
	}
	return NULL;
}