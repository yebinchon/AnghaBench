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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  NullIfExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  inputcollid ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  opcollid ; 
 int /*<<< orphan*/  opfuncid ; 
 int /*<<< orphan*/  opno ; 
 int /*<<< orphan*/  opresulttype ; 
 int /*<<< orphan*/  opretset ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const NullIfExpr *node)
{
	FUNC3("NULLIFEXPR");

	FUNC4(opno);
	FUNC4(opfuncid);
	FUNC4(opresulttype);
	FUNC0(opretset);
	FUNC4(opcollid);
	FUNC4(inputcollid);
	FUNC2(args);
	FUNC1(location);
}