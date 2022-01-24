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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  varattno ; 
 int /*<<< orphan*/  varcollid ; 
 int /*<<< orphan*/  varlevelsup ; 
 int /*<<< orphan*/  varno ; 
 int /*<<< orphan*/  varnoold ; 
 int /*<<< orphan*/  varoattno ; 
 int /*<<< orphan*/  vartype ; 
 int /*<<< orphan*/  vartypmod ; 

__attribute__((used)) static bool
FUNC2(const Var *a, const Var *b)
{
	FUNC1(varno);
	FUNC1(varattno);
	FUNC1(vartype);
	FUNC1(vartypmod);
	FUNC1(varcollid);
	FUNC1(varlevelsup);
	FUNC1(varnoold);
	FUNC1(varoattno);
	FUNC0(location);

	return true;
}