#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  obs_data_item_t ;
struct TYPE_5__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ obs_data_array_t ;
typedef  TYPE_1__* (* get_array_t ) (int /*<<< orphan*/ *) ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_DATA_ARRAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline obs_data_array_t *FUNC2(obs_data_item_t *item,
						    get_array_t get_array)
{
	obs_data_array_t *array =
		FUNC0(item, OBS_DATA_ARRAY) ? get_array(item) : NULL;

	if (array)
		FUNC1(&array->ref);
	return array;
}