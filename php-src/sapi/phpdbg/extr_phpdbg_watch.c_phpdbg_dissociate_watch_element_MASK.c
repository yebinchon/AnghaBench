#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; struct TYPE_7__* child; } ;
typedef  TYPE_1__ phpdbg_watch_element ;

/* Variables and functions */
 int PHPDBG_WATCH_RECURSIVE ; 
 int PHPDBG_WATCH_RECURSIVE_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(phpdbg_watch_element *element, phpdbg_watch_element *until) {
	phpdbg_watch_element *child = element;
	FUNC0((element->flags & (PHPDBG_WATCH_RECURSIVE_ROOT | PHPDBG_WATCH_RECURSIVE)) != PHPDBG_WATCH_RECURSIVE);

	if (element->flags & PHPDBG_WATCH_RECURSIVE_ROOT) {
		FUNC1(element);
		FUNC3(element);
		return;
	}

	while (child->child != until) {
		child = child->child;
		if (child->flags & PHPDBG_WATCH_RECURSIVE_ROOT) {
			FUNC1(child);
			FUNC3(child);
			child->child = NULL;
			break;
		}
		if (child->child == NULL || (child->flags & PHPDBG_WATCH_RECURSIVE_ROOT)) {
			FUNC1(child);
		}
		FUNC2(child);
	}
	/* element needs to be removed last! */
	if (element->child == NULL) {
		FUNC1(element);
	}
	FUNC2(element);
}