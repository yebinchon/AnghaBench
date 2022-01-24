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
typedef  int /*<<< orphan*/  RangeTblFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  funccolcollations ; 
 int /*<<< orphan*/  funccolcount ; 
 int /*<<< orphan*/  funccolnames ; 
 int /*<<< orphan*/  funccoltypes ; 
 int /*<<< orphan*/  funccoltypmods ; 
 int /*<<< orphan*/  funcexpr ; 
 int /*<<< orphan*/  funcparams ; 

__attribute__((used)) static bool
FUNC3(const RangeTblFunction *a, const RangeTblFunction *b)
{
	FUNC1(funcexpr);
	FUNC2(funccolcount);
	FUNC1(funccolnames);
	FUNC1(funccoltypes);
	FUNC1(funccoltypmods);
	FUNC1(funccolcollations);
	FUNC0(funcparams);

	return true;
}