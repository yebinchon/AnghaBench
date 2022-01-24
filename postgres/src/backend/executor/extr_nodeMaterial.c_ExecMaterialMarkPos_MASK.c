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
struct TYPE_3__ {int eflags; int /*<<< orphan*/  tuplestorestate; } ;
typedef  TYPE_1__ MaterialState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXEC_FLAG_MARK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(MaterialState *node)
{
	FUNC0(node->eflags & EXEC_FLAG_MARK);

	/*
	 * if we haven't materialized yet, just return.
	 */
	if (!node->tuplestorestate)
		return;

	/*
	 * copy the active read pointer to the mark.
	 */
	FUNC1(node->tuplestorestate, 0, 1);

	/*
	 * since we may have advanced the mark, try to truncate the tuplestore.
	 */
	FUNC2(node->tuplestorestate);
}