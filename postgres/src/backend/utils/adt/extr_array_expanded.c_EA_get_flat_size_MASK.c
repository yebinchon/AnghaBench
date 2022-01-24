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
struct TYPE_2__ {scalar_t__ ea_magic; int nelems; int ndims; int* dnulls; scalar_t__ flat_size; int /*<<< orphan*/  typalign; int /*<<< orphan*/  typlen; int /*<<< orphan*/ * dvalues; int /*<<< orphan*/  dims; scalar_t__ fvalue; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  ExpandedObjectHeader ;
typedef  TYPE_1__ ExpandedArrayHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ EA_MAGIC ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ MaxAllocSize ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static Size
FUNC11(ExpandedObjectHeader *eohptr)
{
	ExpandedArrayHeader *eah = (ExpandedArrayHeader *) eohptr;
	int			nelems;
	int			ndims;
	Datum	   *dvalues;
	bool	   *dnulls;
	Size		nbytes;
	int			i;

	FUNC5(eah->ea_magic == EA_MAGIC);

	/* Easy if we have a valid flattened value */
	if (eah->fvalue)
		return FUNC2(eah->fvalue);

	/* If we have a cached size value, believe that */
	if (eah->flat_size)
		return eah->flat_size;

	/*
	 * Compute space needed by examining dvalues/dnulls.  Note that the result
	 * array will have a nulls bitmap if dnulls isn't NULL, even if the array
	 * doesn't actually contain any nulls now.
	 */
	nelems = eah->nelems;
	ndims = eah->ndims;
	FUNC5(nelems == FUNC4(ndims, eah->dims));
	dvalues = eah->dvalues;
	dnulls = eah->dnulls;
	nbytes = 0;
	for (i = 0; i < nelems; i++)
	{
		if (dnulls && dnulls[i])
			continue;
		nbytes = FUNC6(nbytes, eah->typlen, dvalues[i]);
		nbytes = FUNC7(nbytes, eah->typalign);
		/* check for overflow of total request */
		if (!FUNC3(nbytes))
			FUNC8(ERROR,
					(FUNC9(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC10("array size exceeds the maximum allowed (%d)",
							(int) MaxAllocSize)));
	}

	if (dnulls)
		nbytes += FUNC1(ndims, nelems);
	else
		nbytes += FUNC0(ndims);

	/* cache for next time */
	eah->flat_size = nbytes;

	return nbytes;
}