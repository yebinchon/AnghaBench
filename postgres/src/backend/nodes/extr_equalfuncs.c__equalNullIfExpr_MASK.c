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
struct TYPE_4__ {scalar_t__ opfuncid; } ;
typedef  TYPE_1__ NullIfExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  inputcollid ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  opcollid ; 
 int /*<<< orphan*/  opno ; 
 int /*<<< orphan*/  opresulttype ; 
 int /*<<< orphan*/  opretset ; 

__attribute__((used)) static bool
FUNC3(const NullIfExpr *a, const NullIfExpr *b)
{
	FUNC2(opno);

	/*
	 * Special-case opfuncid: it is allowable for it to differ if one node
	 * contains zero and the other doesn't.  This just means that the one node
	 * isn't as far along in the parse/plan pipeline and hasn't had the
	 * opfuncid cache filled yet.
	 */
	if (a->opfuncid != b->opfuncid &&
		a->opfuncid != 0 &&
		b->opfuncid != 0)
		return false;

	FUNC2(opresulttype);
	FUNC2(opretset);
	FUNC2(opcollid);
	FUNC2(inputcollid);
	FUNC1(args);
	FUNC0(location);

	return true;
}