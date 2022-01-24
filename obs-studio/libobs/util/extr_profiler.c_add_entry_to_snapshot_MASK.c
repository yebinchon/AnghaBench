#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  children; int /*<<< orphan*/  max_time_between_calls; int /*<<< orphan*/  min_time_between_calls; int /*<<< orphan*/  times_between_calls; void* overall_between_calls_count; int /*<<< orphan*/  expected_time_between_calls; int /*<<< orphan*/  max_time; int /*<<< orphan*/  min_time; int /*<<< orphan*/  times; void* overall_count; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ profiler_snapshot_entry_t ;
struct TYPE_7__ {size_t num; TYPE_3__* array; } ;
struct TYPE_9__ {TYPE_1__ children; int /*<<< orphan*/  times_between_calls; int /*<<< orphan*/  expected_time_between_calls; int /*<<< orphan*/  times; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ profile_entry ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC3(profile_entry *entry,
				  profiler_snapshot_entry_t *s_entry)
{
	s_entry->name = entry->name;

	s_entry->overall_count =
		FUNC0(&entry->times, &s_entry->times,
				  &s_entry->min_time, &s_entry->max_time);

	if ((s_entry->expected_time_between_calls =
		     entry->expected_time_between_calls))
		s_entry->overall_between_calls_count =
			FUNC0(&entry->times_between_calls,
					  &s_entry->times_between_calls,
					  &s_entry->min_time_between_calls,
					  &s_entry->max_time_between_calls);

	FUNC2(s_entry->children, entry->children.num);
	for (size_t i = 0; i < entry->children.num; i++)
		FUNC3(&entry->children.array[i],
				      FUNC1(s_entry->children));
}