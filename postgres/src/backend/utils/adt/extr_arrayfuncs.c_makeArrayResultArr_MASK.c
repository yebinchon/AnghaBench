#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int ndims; int nbytes; int /*<<< orphan*/  mcontext; int /*<<< orphan*/  private_cxt; int /*<<< orphan*/  nitems; int /*<<< orphan*/ * nullbitmap; int /*<<< orphan*/  data; int /*<<< orphan*/  lbs; int /*<<< orphan*/  dims; int /*<<< orphan*/  element_type; } ;
struct TYPE_11__ {int ndim; int dataoffset; int /*<<< orphan*/  elemtype; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ ArrayType ;
typedef  TYPE_2__ ArrayBuildStateArr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int) ; 

Datum
FUNC15(ArrayBuildStateArr *astate,
				   MemoryContext rcontext,
				   bool release)
{
	ArrayType  *result;
	MemoryContext oldcontext;

	/* Build the final array result in rcontext */
	oldcontext = FUNC8(rcontext);

	if (astate->ndims == 0)
	{
		/* No inputs, return empty array */
		result = FUNC12(astate->element_type);
	}
	else
	{
		int			dataoffset,
					nbytes;

		/* Compute required space */
		nbytes = astate->nbytes;
		if (astate->nullbitmap != NULL)
		{
			dataoffset = FUNC5(astate->ndims, astate->nitems);
			nbytes += dataoffset;
		}
		else
		{
			dataoffset = 0;
			nbytes += FUNC4(astate->ndims);
		}

		result = (ArrayType *) FUNC14(nbytes);
		FUNC10(result, nbytes);
		result->ndim = astate->ndims;
		result->dataoffset = dataoffset;
		result->elemtype = astate->element_type;

		FUNC13(FUNC1(result), astate->dims, astate->ndims * sizeof(int));
		FUNC13(FUNC2(result), astate->lbs, astate->ndims * sizeof(int));
		FUNC13(FUNC0(result), astate->data, astate->nbytes);

		if (astate->nullbitmap != NULL)
			FUNC11(FUNC3(result), 0,
							  astate->nullbitmap, 0,
							  astate->nitems);
	}

	FUNC8(oldcontext);

	/* Clean up all the junk */
	if (release)
	{
		FUNC6(astate->private_cxt);
		FUNC7(astate->mcontext);
	}

	return FUNC9(result);
}