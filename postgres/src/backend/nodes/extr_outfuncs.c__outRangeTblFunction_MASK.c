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
typedef  int /*<<< orphan*/  RangeTblFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  funccolcollations ; 
 int /*<<< orphan*/  funccolcount ; 
 int /*<<< orphan*/  funccolnames ; 
 int /*<<< orphan*/  funccoltypes ; 
 int /*<<< orphan*/  funccoltypmods ; 
 int /*<<< orphan*/  funcexpr ; 
 int /*<<< orphan*/  funcparams ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const RangeTblFunction *node)
{
	FUNC3("RANGETBLFUNCTION");

	FUNC2(funcexpr);
	FUNC1(funccolcount);
	FUNC2(funccolnames);
	FUNC2(funccoltypes);
	FUNC2(funccoltypmods);
	FUNC2(funccolcollations);
	FUNC0(funcparams);
}