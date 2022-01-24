#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * fn_extra; int /*<<< orphan*/  fn_mcxt; } ;
struct TYPE_4__ {TYPE_2__* flinfo; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

__attribute__((used)) static FmgrInfo *
FUNC7(FunctionCallInfo fcinfo, int argidx)
{
	FmgrInfo   *foutcache;
	int			i;

	/* We keep the info in fn_mcxt so it survives across calls */
	foutcache = (FmgrInfo *) FUNC0(fcinfo->flinfo->fn_mcxt,
												FUNC2() * sizeof(FmgrInfo));

	for (i = argidx; i < FUNC2(); i++)
	{
		Oid			valtype;
		Oid			typOutput;
		bool		typIsVarlena;

		valtype = FUNC6(fcinfo->flinfo, i);
		if (!FUNC1(valtype))
			FUNC3(ERROR, "could not determine data type of concat() input");

		FUNC5(valtype, &typOutput, &typIsVarlena);
		FUNC4(typOutput, &foutcache[i], fcinfo->flinfo->fn_mcxt);
	}

	fcinfo->flinfo->fn_extra = foutcache;

	return foutcache;
}