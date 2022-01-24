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
struct TYPE_6__ {size_t num; int /*<<< orphan*/ * array; } ;
struct TYPE_5__ {TYPE_3__ objects; } ;
typedef  TYPE_1__ obs_data_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(obs_data_array_t *array)
{
	if (array) {
		for (size_t i = 0; i < array->objects.num; i++)
			FUNC2(array->objects.array[i]);
		FUNC1(array->objects);
		FUNC0(array);
	}
}