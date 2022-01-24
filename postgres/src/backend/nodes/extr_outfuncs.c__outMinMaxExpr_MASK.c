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
typedef  int /*<<< orphan*/  MinMaxExpr ;

/* Variables and functions */
 int /*<<< orphan*/  MinMaxOp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  inputcollid ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  minmaxcollid ; 
 int /*<<< orphan*/  minmaxtype ; 
 int /*<<< orphan*/  op ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const MinMaxExpr *node)
{
	FUNC3("MINMAX");

	FUNC4(minmaxtype);
	FUNC4(minmaxcollid);
	FUNC4(inputcollid);
	FUNC0(op, MinMaxOp);
	FUNC2(args);
	FUNC1(location);
}