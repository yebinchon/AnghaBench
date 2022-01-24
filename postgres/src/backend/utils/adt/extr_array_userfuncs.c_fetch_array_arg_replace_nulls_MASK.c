#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* fn_extra; int /*<<< orphan*/  fn_mcxt; } ;
struct TYPE_9__ {int /*<<< orphan*/  element_type; } ;
struct TYPE_8__ {TYPE_3__* flinfo; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  ExpandedArrayHeader ;
typedef  TYPE_2__ ArrayMetaState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 

__attribute__((used)) static ExpandedArrayHeader *
FUNC12(FunctionCallInfo fcinfo, int argno)
{
	ExpandedArrayHeader *eah;
	Oid			element_type;
	ArrayMetaState *my_extra;
	MemoryContext resultcxt;

	/* If first time through, create datatype cache struct */
	my_extra = (ArrayMetaState *) fcinfo->flinfo->fn_extra;
	if (my_extra == NULL)
	{
		my_extra = (ArrayMetaState *)
			FUNC1(fcinfo->flinfo->fn_mcxt,
							   sizeof(ArrayMetaState));
		my_extra->element_type = InvalidOid;
		fcinfo->flinfo->fn_extra = my_extra;
	}

	/* Figure out which context we want the result in */
	if (!FUNC0(fcinfo, &resultcxt))
		resultcxt = CurrentMemoryContext;

	/* Now collect the array value */
	if (!FUNC4(argno))
	{
		MemoryContext oldcxt = FUNC2(resultcxt);

		eah = FUNC5(argno, my_extra);
		FUNC2(oldcxt);
	}
	else
	{
		/* We have to look up the array type and element type */
		Oid			arr_typeid = FUNC11(fcinfo->flinfo, argno);

		if (!FUNC3(arr_typeid))
			FUNC7(ERROR,
					(FUNC8(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC9("could not determine input data type")));
		element_type = FUNC10(arr_typeid);
		if (!FUNC3(element_type))
			FUNC7(ERROR,
					(FUNC8(ERRCODE_DATATYPE_MISMATCH),
					 FUNC9("input data type is not an array")));

		eah = FUNC6(element_type,
											 resultcxt,
											 my_extra);
	}

	return eah;
}