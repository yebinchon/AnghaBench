#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ obs_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  objects; } ;
typedef  TYPE_2__ obs_data_array_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

size_t FUNC2(obs_data_array_t *array, obs_data_t *obj)
{
	if (!array || !obj)
		return 0;

	FUNC1(&obj->ref);
	return FUNC0(array->objects, &obj);
}