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
struct signal_info {struct signal_info* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  global_callbacks_mutex; int /*<<< orphan*/  global_callbacks; struct signal_info* first; } ;
typedef  TYPE_1__ signal_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct signal_info*) ; 

__attribute__((used)) static void FUNC4(signal_handler_t *handler)
{
	struct signal_info *sig = handler->first;
	while (sig != NULL) {
		struct signal_info *next = sig->next;
		FUNC3(sig);
		sig = next;
	}

	FUNC1(handler->global_callbacks);
	FUNC2(&handler->global_callbacks_mutex);
	FUNC2(&handler->mutex);
	FUNC0(handler);
}