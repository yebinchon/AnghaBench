#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  mcontext; } ;
struct TYPE_8__ {TYPE_1__* arraystate; TYPE_3__* scalarstate; } ;
struct TYPE_7__ {int /*<<< orphan*/  mcontext; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ArrayBuildStateArr ;
typedef  TYPE_2__ ArrayBuildStateAny ;
typedef  TYPE_3__ ArrayBuildState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

ArrayBuildStateAny *
FUNC7(Oid input_type, MemoryContext rcontext, bool subcontext)
{
	ArrayBuildStateAny *astate;
	Oid			element_type = FUNC4(input_type);

	if (FUNC2(element_type))
	{
		/* Array case */
		ArrayBuildStateArr *arraystate;

		arraystate = FUNC6(input_type, InvalidOid, rcontext, subcontext);
		astate = (ArrayBuildStateAny *)
			FUNC1(arraystate->mcontext,
							   sizeof(ArrayBuildStateAny));
		astate->scalarstate = NULL;
		astate->arraystate = arraystate;
	}
	else
	{
		/* Scalar case */
		ArrayBuildState *scalarstate;

		/* Let's just check that we have a type that can be put into arrays */
		FUNC0(FUNC2(FUNC3(input_type)));

		scalarstate = FUNC5(input_type, rcontext, subcontext);
		astate = (ArrayBuildStateAny *)
			FUNC1(scalarstate->mcontext,
							   sizeof(ArrayBuildStateAny));
		astate->scalarstate = scalarstate;
		astate->arraystate = NULL;
	}

	return astate;
}