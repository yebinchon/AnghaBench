#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t num; struct device_item* array; } ;
struct device_list {TYPE_1__ items; } ;
struct TYPE_6__ {char* array; } ;
struct TYPE_5__ {int /*<<< orphan*/  array; } ;
struct device_item {TYPE_3__ value; TYPE_2__ name; } ;
typedef  int /*<<< orphan*/  obs_property_t ;
typedef  int /*<<< orphan*/  obs_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_COMBO_FORMAT_STRING ; 
 int /*<<< orphan*/  OBS_COMBO_TYPE_LIST ; 
 int /*<<< orphan*/  TEXT_DEVICE ; 
 int /*<<< orphan*/  TEXT_DEVICE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct device_list*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_list*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static obs_properties_t *FUNC6(bool input)
{
	obs_properties_t *props = FUNC4();
	obs_property_t *property;
	struct device_list devices;

	FUNC2(&devices, 0, sizeof(struct device_list));

	property = FUNC3(props, "device_id", TEXT_DEVICE,
					   OBS_COMBO_TYPE_LIST,
					   OBS_COMBO_FORMAT_STRING);

	FUNC0(&devices, input);

	if (devices.items.num)
		FUNC5(property, TEXT_DEVICE_DEFAULT,
					     "default");

	for (size_t i = 0; i < devices.items.num; i++) {
		struct device_item *item = devices.items.array + i;
		FUNC5(property, item->name.array,
					     item->value.array);
	}

	FUNC1(&devices);
	return props;
}