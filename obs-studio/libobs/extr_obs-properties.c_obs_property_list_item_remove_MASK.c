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
struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct list_data {TYPE_1__ items; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,size_t) ; 
 struct list_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct list_data*,scalar_t__) ; 

void FUNC3(obs_property_t *p, size_t idx)
{
	struct list_data *data = FUNC1(p);
	if (data && idx < data->items.num) {
		FUNC2(data, data->items.array + idx);
		FUNC0(data->items, idx);
	}
}