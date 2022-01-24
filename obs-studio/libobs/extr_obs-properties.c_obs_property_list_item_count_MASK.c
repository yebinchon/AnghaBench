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
struct TYPE_2__ {size_t num; } ;
struct list_data {TYPE_1__ items; } ;
typedef  int /*<<< orphan*/  obs_property_t ;

/* Variables and functions */
 struct list_data* FUNC0 (int /*<<< orphan*/ *) ; 

size_t FUNC1(obs_property_t *p)
{
	struct list_data *data = FUNC0(p);
	return data ? data->items.num : 0;
}