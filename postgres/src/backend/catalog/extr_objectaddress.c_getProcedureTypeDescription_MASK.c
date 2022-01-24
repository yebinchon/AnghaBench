#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ prokind; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 scalar_t__ PROKIND_AGGREGATE ; 
 scalar_t__ PROKIND_PROCEDURE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(StringInfo buffer, Oid procid)
{
	HeapTuple	procTup;
	Form_pg_proc procForm;

	procTup = FUNC4(PROCOID,
							  FUNC2(procid));
	if (!FUNC1(procTup))
		FUNC6(ERROR, "cache lookup failed for procedure %u", procid);
	procForm = (Form_pg_proc) FUNC0(procTup);

	if (procForm->prokind == PROKIND_AGGREGATE)
		FUNC5(buffer, "aggregate");
	else if (procForm->prokind == PROKIND_PROCEDURE)
		FUNC5(buffer, "procedure");
	else						/* function or window function */
		FUNC5(buffer, "function");

	FUNC3(procTup);
}