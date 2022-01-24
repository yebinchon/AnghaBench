#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  phpdbg_watchpoint_t ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ phpdbg_watch_element ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  PHPDBG_WATCH_ARRAY ; 
 int /*<<< orphan*/  PHPDBG_WATCH_OBJECT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

phpdbg_watch_element *FUNC4(zval *zv, phpdbg_watch_element *element) {
	phpdbg_watchpoint_t watch;
	HashTable *ht = FUNC0(zv);

	if (!ht) {
		return NULL;
	}

	element->flags |= FUNC1(zv) == IS_ARRAY ? PHPDBG_WATCH_ARRAY : PHPDBG_WATCH_OBJECT;
	FUNC3(ht, &watch);
	return FUNC2(&watch, element);
}