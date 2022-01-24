#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_4__ {TYPE_1__* entry; } ;
struct TYPE_3__ {int expected_time_between_calls; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_mutex ; 

void FUNC3(const char *name,
			   uint64_t expected_time_between_calls)
{
	if (!FUNC1())
		return;

	FUNC0(name)->entry->expected_time_between_calls =
		(expected_time_between_calls + 500) / 1000;
	FUNC2(&root_mutex);
}