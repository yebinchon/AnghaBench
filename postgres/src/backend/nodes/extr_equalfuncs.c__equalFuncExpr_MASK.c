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
typedef  int /*<<< orphan*/  FuncExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  funccollid ; 
 int /*<<< orphan*/  funcformat ; 
 int /*<<< orphan*/  funcid ; 
 int /*<<< orphan*/  funcresulttype ; 
 int /*<<< orphan*/  funcretset ; 
 int /*<<< orphan*/  funcvariadic ; 
 int /*<<< orphan*/  inputcollid ; 
 int /*<<< orphan*/  location ; 

__attribute__((used)) static bool
FUNC4(const FuncExpr *a, const FuncExpr *b)
{
	FUNC3(funcid);
	FUNC3(funcresulttype);
	FUNC3(funcretset);
	FUNC3(funcvariadic);
	FUNC0(funcformat);
	FUNC3(funccollid);
	FUNC3(inputcollid);
	FUNC2(args);
	FUNC1(location);

	return true;
}