#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {int /*<<< orphan*/  priority; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ spl_pqueue_elem ;

/* Variables and functions */
 int SPL_PQUEUE_EXTR_BOTH ; 
 int SPL_PQUEUE_EXTR_DATA ; 
 int SPL_PQUEUE_EXTR_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zval *result, spl_pqueue_elem *elem, int flags) /* {{{ */
{
	if ((flags & SPL_PQUEUE_EXTR_BOTH) == SPL_PQUEUE_EXTR_BOTH) {
		FUNC4(result);
		FUNC2(elem->data);
		FUNC3(result, "data", sizeof("data") - 1, &elem->data);
		FUNC2(elem->priority);
		FUNC3(result, "priority", sizeof("priority") - 1, &elem->priority);
		return;
	}

	if (flags & SPL_PQUEUE_EXTR_DATA) {
		FUNC1(result, &elem->data);
		return;
	}

	if (flags & SPL_PQUEUE_EXTR_PRIORITY) {
		FUNC1(result, &elem->priority);
		return;
	}

	FUNC0(0);
}