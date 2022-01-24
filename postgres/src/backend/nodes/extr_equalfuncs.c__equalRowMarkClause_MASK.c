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
typedef  int /*<<< orphan*/  RowMarkClause ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pushedDown ; 
 int /*<<< orphan*/  rti ; 
 int /*<<< orphan*/  strength ; 
 int /*<<< orphan*/  waitPolicy ; 

__attribute__((used)) static bool
FUNC1(const RowMarkClause *a, const RowMarkClause *b)
{
	FUNC0(rti);
	FUNC0(strength);
	FUNC0(waitPolicy);
	FUNC0(pushedDown);

	return true;
}