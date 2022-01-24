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
typedef  int /*<<< orphan*/  RestrictInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clause ; 
 int /*<<< orphan*/  is_pushed_down ; 
 int /*<<< orphan*/  nullable_relids ; 
 int /*<<< orphan*/  outer_relids ; 
 int /*<<< orphan*/  outerjoin_delayed ; 
 int /*<<< orphan*/  required_relids ; 
 int /*<<< orphan*/  security_level ; 

__attribute__((used)) static bool
FUNC3(const RestrictInfo *a, const RestrictInfo *b)
{
	FUNC1(clause);
	FUNC2(is_pushed_down);
	FUNC2(outerjoin_delayed);
	FUNC2(security_level);
	FUNC0(required_relids);
	FUNC0(outer_relids);
	FUNC0(nullable_relids);

	/*
	 * We ignore all the remaining fields, since they may not be set yet, and
	 * should be derivable from the clause anyway.
	 */

	return true;
}