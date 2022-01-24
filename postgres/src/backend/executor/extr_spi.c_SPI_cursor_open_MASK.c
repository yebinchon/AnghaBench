#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  argtypes; int /*<<< orphan*/  nargs; } ;
typedef  TYPE_1__* SPIPlanPtr ;
typedef  int /*<<< orphan*/  Portal ;
typedef  scalar_t__ ParamListInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_1__*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

Portal
FUNC3(const char *name, SPIPlanPtr plan,
				Datum *Values, const char *Nulls,
				bool read_only)
{
	Portal		portal;
	ParamListInfo paramLI;

	/* build transient ParamListInfo in caller's context */
	paramLI = FUNC1(plan->nargs, plan->argtypes,
								  Values, Nulls);

	portal = FUNC0(name, plan, paramLI, read_only);

	/* done with the transient ParamListInfo */
	if (paramLI)
		FUNC2(paramLI);

	return portal;
}