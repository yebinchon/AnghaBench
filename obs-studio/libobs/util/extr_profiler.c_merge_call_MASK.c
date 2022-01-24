#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ expected_time_between_calls; int /*<<< orphan*/  overhead; int /*<<< orphan*/  times; int /*<<< orphan*/  times_between_calls; } ;
typedef  TYPE_2__ profile_entry ;
struct TYPE_9__ {size_t num; TYPE_3__* array; } ;
struct TYPE_11__ {int /*<<< orphan*/  overhead_end; int /*<<< orphan*/  end_time; int /*<<< orphan*/  start_time; int /*<<< orphan*/  overhead_start; int /*<<< orphan*/  name; TYPE_1__ children; } ;
typedef  TYPE_3__ profile_call ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(profile_entry *entry, profile_call *call,
		       profile_call *prev_call)
{
	const size_t num = call->children.num;
	for (size_t i = 0; i < num; i++) {
		profile_call *child = &call->children.array[i];
		FUNC4(FUNC2(entry, child->name), child, NULL);
	}

	if (entry->expected_time_between_calls != 0 && prev_call) {
		FUNC3(&entry->times_between_calls, true);
		uint64_t usec = FUNC1(prev_call->start_time,
						call->start_time);
		FUNC0(&entry->times_between_calls, usec, 1);
	}

	FUNC3(&entry->times, true);
	uint64_t usec = FUNC1(call->start_time, call->end_time);
	FUNC0(&entry->times, usec, 1);

#ifdef TRACK_OVERHEAD
	migrate_old_entries(&entry->overhead, true);
	usec = diff_ns_to_usec(call->overhead_start, call->start_time);
	usec += diff_ns_to_usec(call->end_time, call->overhead_end);
	add_hashmap_entry(&entry->overhead, usec, 1);
#endif
}