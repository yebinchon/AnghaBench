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
struct obs_data_item {int /*<<< orphan*/  type; int /*<<< orphan*/  data_size; } ;
struct obs_data {int dummy; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_DATA_ARRAY ; 
 int /*<<< orphan*/  OBS_DATA_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (struct obs_data*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_data*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct obs_data_item*) ; 
 char* FUNC3 (struct obs_data_item*) ; 
 int /*<<< orphan*/  obs_data_set_array ; 
 int /*<<< orphan*/  obs_data_set_obj ; 
 int /*<<< orphan*/  FUNC4 (struct obs_data*,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct obs_data *data, struct obs_data_item *item)
{
	const char *name = FUNC3(item);
	void *ptr = FUNC2(item);

	if (item->type == OBS_DATA_OBJECT) {
		obs_data_t **obj = item->data_size ? ptr : NULL;

		if (obj)
			FUNC1(data, name, *obj, obs_data_set_obj);

	} else if (item->type == OBS_DATA_ARRAY) {
		obs_data_array_t **array = item->data_size ? ptr : NULL;

		if (array)
			FUNC0(data, name, *array, obs_data_set_array);

	} else {
		if (item->data_size)
			FUNC4(data, NULL, name, ptr, item->data_size,
				 item->type);
	}
}