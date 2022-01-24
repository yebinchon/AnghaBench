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
struct TYPE_3__ {int private_cxt; void* element_type; void* array_type; int /*<<< orphan*/  mcontext; } ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ArrayBuildStateArr ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (void*) ; 

ArrayBuildStateArr *
FUNC8(Oid array_type, Oid element_type, MemoryContext rcontext,
				   bool subcontext)
{
	ArrayBuildStateArr *astate;
	MemoryContext arr_context = rcontext;	/* by default use the parent ctx */

	/* Lookup element type, unless element_type already provided */
	if (!FUNC2(element_type))
	{
		element_type = FUNC7(array_type);

		if (!FUNC2(element_type))
			FUNC3(ERROR,
					(FUNC4(ERRCODE_DATATYPE_MISMATCH),
					 FUNC5("data type %s is not an array type",
							FUNC6(array_type))));
	}

	/* Make a temporary context to hold all the junk */
	if (subcontext)
		arr_context = FUNC0(rcontext,
											"accumArrayResultArr",
											ALLOCSET_DEFAULT_SIZES);

	/* Note we initialize all fields to zero */
	astate = (ArrayBuildStateArr *)
		FUNC1(arr_context, sizeof(ArrayBuildStateArr));
	astate->mcontext = arr_context;
	astate->private_cxt = subcontext;

	/* Save relevant datatype information */
	astate->array_type = array_type;
	astate->element_type = element_type;

	return astate;
}