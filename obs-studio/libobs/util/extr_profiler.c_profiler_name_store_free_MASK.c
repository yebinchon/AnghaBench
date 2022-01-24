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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t num; TYPE_1__** array; } ;
struct TYPE_5__ {TYPE_3__ names; } ;
typedef  TYPE_1__ profiler_name_store_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 

void FUNC2(profiler_name_store_t *store)
{
	if (!store)
		return;

	for (size_t i = 0; i < store->names.num; i++)
		FUNC0(store->names.array[i]);

	FUNC1(store->names);
	FUNC0(store);
}