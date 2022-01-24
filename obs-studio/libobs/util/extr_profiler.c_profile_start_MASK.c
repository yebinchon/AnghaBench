#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* array; } ;
struct TYPE_8__ {char const* name; int /*<<< orphan*/  start_time; TYPE_5__ children; struct TYPE_8__* parent; int /*<<< orphan*/  overhead_start; } ;
typedef  TYPE_1__ profile_call ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 size_t FUNC1 (TYPE_5__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* thread_context ; 
 int /*<<< orphan*/  thread_enabled ; 

void FUNC4(const char *name)
{
	if (!thread_enabled)
		return;

	profile_call new_call = {
		.name = name,
#ifdef TRACK_OVERHEAD
		.overhead_start = os_gettime_ns(),
#endif
		.parent = thread_context,
	};

	profile_call *call = NULL;

	if (new_call.parent) {
		size_t idx = FUNC1(new_call.parent->children, &new_call);
		call = &new_call.parent->children.array[idx];
	} else {
		call = FUNC0(sizeof(profile_call));
		FUNC2(call, &new_call, sizeof(profile_call));
	}

	thread_context = call;
	call->start_time = FUNC3();
}