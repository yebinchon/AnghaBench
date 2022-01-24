#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool
FUNC2(Node *clause)
{
	/*
	 * We could implement this check in one recursive scan.  But since the
	 * check for volatile functions is both moderately expensive and unlikely
	 * to fail, it seems better to look for Vars first and only check for
	 * volatile functions if we find no Vars.
	 */
	if (!FUNC0(clause) &&
		!FUNC1(clause))
		return true;
	return false;
}