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
struct obs_encoder_info {int /*<<< orphan*/ * (* get_properties ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  type_data; int /*<<< orphan*/ * (* get_properties2 ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  obs_properties_t ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 struct obs_encoder_info* FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct obs_encoder_info const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

obs_properties_t *FUNC6(const char *id)
{
	const struct obs_encoder_info *ei = FUNC0(id);
	if (ei && (ei->get_properties || ei->get_properties2)) {
		obs_data_t *defaults = FUNC1(ei);
		obs_properties_t *properties = NULL;

		if (ei->get_properties2) {
			properties = ei->get_properties2(NULL, ei->type_data);
		} else if (ei->get_properties) {
			properties = ei->get_properties(NULL);
		}

		FUNC3(properties, defaults);
		FUNC2(defaults);
		return properties;
	}
	return NULL;
}