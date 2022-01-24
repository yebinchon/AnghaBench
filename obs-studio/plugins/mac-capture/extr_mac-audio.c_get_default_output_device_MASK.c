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
struct TYPE_6__ {TYPE_2__* array; int /*<<< orphan*/  num; } ;
struct device_list {TYPE_3__ items; } ;
struct coreaudio_data {int /*<<< orphan*/  device_uid; } ;
struct TYPE_4__ {int /*<<< orphan*/  array; } ;
struct TYPE_5__ {TYPE_1__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_list*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_list*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC5(struct coreaudio_data *ca)
{
	struct device_list list;

	FUNC4(&list, 0, sizeof(struct device_list));
	FUNC2(&list, false);

	if (!list.items.num)
		return false;

	FUNC0(ca->device_uid);
	ca->device_uid = FUNC1(list.items.array[0].value.array);

	FUNC3(&list);
	return true;
}