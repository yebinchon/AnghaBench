#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  array; } ;
struct device_item {TYPE_1__ value; TYPE_1__ name; } ;
struct add_data {int /*<<< orphan*/  list; scalar_t__ input; } ;
typedef  int /*<<< orphan*/  item ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/  AudioDeviceID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_item*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct device_item*) ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 
 int /*<<< orphan*/  FUNC5 (struct device_item*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC6(void *param, CFStringRef cf_name,
				      CFStringRef cf_uid, AudioDeviceID id)
{
	struct add_data *data = param;
	struct device_item item;

	FUNC5(&item, 0, sizeof(item));

	if (!FUNC1(cf_name, kCFStringEncodingUTF8, &item.name))
		goto fail;
	if (!FUNC1(cf_uid, kCFStringEncodingUTF8, &item.value))
		goto fail;

	if (data->input || !FUNC2(item.value.array))
		FUNC4(data->list, &item);

fail:
	FUNC3(&item);

	FUNC0(id);
	return true;
}