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
typedef  int /*<<< orphan*/  JoinExpr ;

/* Variables and functions */
 int /*<<< orphan*/  JoinType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  isNatural ; 
 int /*<<< orphan*/  jointype ; 
 int /*<<< orphan*/  larg ; 
 int /*<<< orphan*/  quals ; 
 int /*<<< orphan*/  rarg ; 
 int /*<<< orphan*/  rtindex ; 
 int /*<<< orphan*/  usingClause ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const JoinExpr *node)
{
	FUNC4("JOINEXPR");

	FUNC1(jointype, JoinType);
	FUNC0(isNatural);
	FUNC3(larg);
	FUNC3(rarg);
	FUNC3(usingClause);
	FUNC3(quals);
	FUNC3(alias);
	FUNC2(rtindex);
}