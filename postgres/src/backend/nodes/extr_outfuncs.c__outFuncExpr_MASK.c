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
typedef  int /*<<< orphan*/  FuncExpr ;

/* Variables and functions */
 int /*<<< orphan*/  CoercionForm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  funccollid ; 
 int /*<<< orphan*/  funcformat ; 
 int /*<<< orphan*/  funcid ; 
 int /*<<< orphan*/  funcresulttype ; 
 int /*<<< orphan*/  funcretset ; 
 int /*<<< orphan*/  funcvariadic ; 
 int /*<<< orphan*/  inputcollid ; 
 int /*<<< orphan*/  location ; 

__attribute__((used)) static void
FUNC6(StringInfo str, const FuncExpr *node)
{
	FUNC4("FUNCEXPR");

	FUNC5(funcid);
	FUNC5(funcresulttype);
	FUNC0(funcretset);
	FUNC0(funcvariadic);
	FUNC1(funcformat, CoercionForm);
	FUNC5(funccollid);
	FUNC5(inputcollid);
	FUNC3(args);
	FUNC2(location);
}