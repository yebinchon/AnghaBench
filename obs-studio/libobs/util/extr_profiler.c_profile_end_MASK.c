#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct TYPE_4__ {char const* name; struct TYPE_4__* parent; void* overhead_end; void* end_time; } ;
typedef  TYPE_1__ profile_call ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 () ; 
 TYPE_1__* thread_context ; 
 int /*<<< orphan*/  thread_enabled ; 

void FUNC3(const char *name)
{
	uint64_t end = FUNC2();
	if (!thread_enabled)
		return;

	profile_call *call = thread_context;
	if (!call) {
		FUNC0(LOG_ERROR, "Called profile end with no active profile");
		return;
	}

	if (!call->name)
		call->name = name;

	if (call->name != name) {
		FUNC0(LOG_ERROR,
		     "Called profile end with mismatching name: "
		     "start(\"%s\"[%p]) <-> end(\"%s\"[%p])",
		     call->name, call->name, name, name);

		profile_call *parent = call->parent;
		while (parent && parent->parent && parent->name != name)
			parent = parent->parent;

		if (!parent || parent->name != name)
			return;

		while (call->name != name) {
			FUNC3(call->name);
			call = call->parent;
		}
	}

	thread_context = call->parent;

	call->end_time = end;
#ifdef TRACK_OVERHEAD
	call->overhead_end = os_gettime_ns();
#endif

	if (call->parent)
		return;

	FUNC1(call);
}