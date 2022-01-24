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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  dims ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayBuildState ;
typedef  int /*<<< orphan*/  AV ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXDIM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Datum
FUNC12(SV *src, Oid typid, int32 typmod)
{
	dTHX;
	ArrayBuildState *astate;
	Oid			elemtypid;
	FmgrInfo	finfo;
	Oid			typioparam;
	int			dims[MAXDIM];
	int			lbs[MAXDIM];
	int			ndims = 1;
	int			i;

	elemtypid = FUNC8(typid);
	if (!elemtypid)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_DATATYPE_MISMATCH),
				 FUNC6("cannot convert Perl array to non-array type %s",
						FUNC7(typid))));

	astate = FUNC9(elemtypid, CurrentMemoryContext, true);

	FUNC1(elemtypid, &finfo, &typioparam);

	FUNC11(dims, 0, sizeof(dims));
	dims[0] = FUNC3((AV *) FUNC0(src)) + 1;

	FUNC2((AV *) FUNC0(src), astate,
							&ndims, dims, 1,
							typid, elemtypid, typmod,
							&finfo, typioparam);

	/* ensure we get zero-D array for no inputs, as per PG convention */
	if (dims[0] <= 0)
		ndims = 0;

	for (i = 0; i < ndims; i++)
		lbs[i] = 1;

	return FUNC10(astate, ndims, dims, lbs,
							 CurrentMemoryContext, true);
}