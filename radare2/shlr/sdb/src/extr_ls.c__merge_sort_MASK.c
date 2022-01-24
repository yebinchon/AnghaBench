#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  n; } ;
typedef  TYPE_1__ SdbListIter ;
typedef  int /*<<< orphan*/  SdbListComparator ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static SdbListIter * FUNC2(SdbListIter *head, SdbListComparator cmp) {
	SdbListIter *second;
	if (!head || !head->n) {
		return head;
	}
	second = FUNC1 (head);
	head = FUNC2 (head, cmp);
	second = FUNC2 (second, cmp);
	return FUNC0 (head, second, cmp);
}