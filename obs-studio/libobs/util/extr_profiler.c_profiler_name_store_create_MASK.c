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
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ profiler_name_store_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

profiler_name_store_t *FUNC3(void)
{
	profiler_name_store_t *store = FUNC1(sizeof(profiler_name_store_t));

	if (FUNC2(&store->mutex, NULL))
		goto error;

	return store;

error:
	FUNC0(store);
	return NULL;
}