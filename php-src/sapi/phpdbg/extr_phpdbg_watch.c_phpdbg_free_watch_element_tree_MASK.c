#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* child; struct TYPE_5__* parent; } ;
typedef  TYPE_1__ phpdbg_watch_element ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(phpdbg_watch_element *element) {
	phpdbg_watch_element *parent = element->parent, *child = element->child;
	while (parent) {
		phpdbg_watch_element *cur = parent;
		parent = parent->parent;
		FUNC0(cur);
		FUNC1(cur);
	}
	while (child) {
		phpdbg_watch_element *cur = child;
		child = child->child;
		FUNC1(cur);
	}
	FUNC1(element);
}