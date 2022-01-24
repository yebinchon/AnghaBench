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
typedef  int /*<<< orphan*/  Var ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  varattno ; 
 int /*<<< orphan*/  varcollid ; 
 int /*<<< orphan*/  varlevelsup ; 
 int /*<<< orphan*/  varno ; 
 int /*<<< orphan*/  varnoold ; 
 int /*<<< orphan*/  varoattno ; 
 int /*<<< orphan*/  vartype ; 
 int /*<<< orphan*/  vartypmod ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const Var *node)
{
	FUNC2("VAR");

	FUNC4(varno);
	FUNC0(varattno);
	FUNC3(vartype);
	FUNC0(vartypmod);
	FUNC3(varcollid);
	FUNC4(varlevelsup);
	FUNC4(varnoold);
	FUNC0(varoattno);
	FUNC1(location);
}