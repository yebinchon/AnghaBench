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
typedef  int /*<<< orphan*/  RowCompareExpr ;

/* Variables and functions */
 int /*<<< orphan*/  RowCompareType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  inputcollids ; 
 int /*<<< orphan*/  largs ; 
 int /*<<< orphan*/  opfamilies ; 
 int /*<<< orphan*/  opnos ; 
 int /*<<< orphan*/  rargs ; 
 int /*<<< orphan*/  rctype ; 

__attribute__((used)) static void
FUNC3(StringInfo str, const RowCompareExpr *node)
{
	FUNC2("ROWCOMPARE");

	FUNC0(rctype, RowCompareType);
	FUNC1(opnos);
	FUNC1(opfamilies);
	FUNC1(inputcollids);
	FUNC1(largs);
	FUNC1(rargs);
}