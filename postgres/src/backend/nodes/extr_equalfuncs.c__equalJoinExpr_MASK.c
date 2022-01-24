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
typedef  int /*<<< orphan*/  JoinExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  isNatural ; 
 int /*<<< orphan*/  jointype ; 
 int /*<<< orphan*/  larg ; 
 int /*<<< orphan*/  quals ; 
 int /*<<< orphan*/  rarg ; 
 int /*<<< orphan*/  rtindex ; 
 int /*<<< orphan*/  usingClause ; 

__attribute__((used)) static bool
FUNC2(const JoinExpr *a, const JoinExpr *b)
{
	FUNC1(jointype);
	FUNC1(isNatural);
	FUNC0(larg);
	FUNC0(rarg);
	FUNC0(usingClause);
	FUNC0(quals);
	FUNC0(alias);
	FUNC1(rtindex);

	return true;
}