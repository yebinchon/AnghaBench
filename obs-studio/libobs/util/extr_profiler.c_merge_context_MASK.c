#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_mutex_t ;
struct TYPE_8__ {TYPE_2__* prev_call; int /*<<< orphan*/ * entry; int /*<<< orphan*/ * mutex; } ;
typedef  TYPE_1__ profile_root_entry ;
typedef  int /*<<< orphan*/  profile_entry ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ profile_call ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_mutex ; 

__attribute__((used)) static void FUNC6(profile_call *context)
{
	pthread_mutex_t *mutex = NULL;
	profile_entry *entry = NULL;
	profile_call *prev_call = NULL;

	if (!FUNC2()) {
		FUNC0(context);
		return;
	}

	profile_root_entry *r_entry = FUNC1(context->name);

	mutex = r_entry->mutex;
	entry = r_entry->entry;
	prev_call = r_entry->prev_call;

	r_entry->prev_call = context;

	FUNC4(mutex);
	FUNC5(&root_mutex);

	FUNC3(entry, context, prev_call);

	FUNC5(mutex);

	FUNC0(prev_call);
}