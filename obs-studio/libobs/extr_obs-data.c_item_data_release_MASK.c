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
struct obs_data_item {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;

/* Variables and functions */
 scalar_t__ OBS_DATA_ARRAY ; 
 scalar_t__ OBS_DATA_OBJECT ; 
 int /*<<< orphan*/ * FUNC0 (struct obs_data_item*) ; 
 int /*<<< orphan*/ * FUNC1 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_data_item*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct obs_data_item *item)
{
	if (!FUNC3(item))
		return;

	if (item->type == OBS_DATA_OBJECT) {
		obs_data_t *obj = FUNC1(item);
		FUNC4(obj);

	} else if (item->type == OBS_DATA_ARRAY) {
		obs_data_array_t *array = FUNC0(item);
		FUNC2(array);
	}
}