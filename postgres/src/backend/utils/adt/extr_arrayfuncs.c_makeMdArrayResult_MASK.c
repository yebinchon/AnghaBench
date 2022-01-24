#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mcontext; int /*<<< orphan*/  private_cxt; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; int /*<<< orphan*/  element_type; int /*<<< orphan*/  dnulls; int /*<<< orphan*/  dvalues; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;
typedef  TYPE_1__ ArrayBuildState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Datum
FUNC5(ArrayBuildState *astate,
				  int ndims,
				  int *dims,
				  int *lbs,
				  MemoryContext rcontext,
				  bool release)
{
	ArrayType  *result;
	MemoryContext oldcontext;

	/* Build the final array result in rcontext */
	oldcontext = FUNC2(rcontext);

	result = FUNC4(astate->dvalues,
								astate->dnulls,
								ndims,
								dims,
								lbs,
								astate->element_type,
								astate->typlen,
								astate->typbyval,
								astate->typalign);

	FUNC2(oldcontext);

	/* Clean up all the junk */
	if (release)
	{
		FUNC0(astate->private_cxt);
		FUNC1(astate->mcontext);
	}

	return FUNC3(result);
}