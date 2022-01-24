#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  array_iter ;
struct TYPE_18__ {int /*<<< orphan*/  fn_oid; } ;
struct TYPE_20__ {scalar_t__ type_id; int typlen; int typbyval; char typalign; TYPE_13__ eq_opr_finfo; } ;
typedef  TYPE_2__ TypeCacheEntry ;
struct TYPE_23__ {void** dvalues; int* dnulls; int nelems; } ;
struct TYPE_22__ {int isnull; TYPE_1__* args; } ;
struct TYPE_21__ {TYPE_6__ xpn; } ;
struct TYPE_19__ {int isnull; void* value; } ;
typedef  scalar_t__ Oid ;
typedef  void* Datum ;
typedef  int /*<<< orphan*/  ArrayType ;
typedef  TYPE_3__ AnyArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__,TYPE_13__*,int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPECACHE_EQ_OPR_FINFO ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int*,int,int,int,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int,int,char,void***,int**,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 TYPE_5__* locfcinfo ; 
 TYPE_2__* FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC19(AnyArrayType *array1, AnyArrayType *array2, Oid collation,
					  bool matchall, void **fn_extra)
{
	FUNC7(locfcinfo, 2);
	bool		result = matchall;
	Oid			element_type = FUNC1(array1);
	TypeCacheEntry *typentry;
	int			nelems1;
	Datum	   *values2;
	bool	   *nulls2;
	int			nelems2;
	int			typlen;
	bool		typbyval;
	char		typalign;
	int			i;
	int			j;
	array_iter	it1;

	if (element_type != FUNC1(array2))
		FUNC14(ERROR,
				(FUNC15(ERRCODE_DATATYPE_MISMATCH),
				 FUNC16("cannot compare arrays of different element types")));

	/*
	 * We arrange to look up the equality function only once per series of
	 * calls, assuming the element type doesn't change underneath us.  The
	 * typcache is used so that we have no memory leakage when being used as
	 * an index support function.
	 */
	typentry = (TypeCacheEntry *) *fn_extra;
	if (typentry == NULL ||
		typentry->type_id != element_type)
	{
		typentry = FUNC18(element_type,
									 TYPECACHE_EQ_OPR_FINFO);
		if (!FUNC8(typentry->eq_opr_finfo.fn_oid))
			FUNC14(ERROR,
					(FUNC15(ERRCODE_UNDEFINED_FUNCTION),
					 FUNC16("could not identify an equality operator for type %s",
							FUNC17(element_type))));
		*fn_extra = (void *) typentry;
	}
	typlen = typentry->typlen;
	typbyval = typentry->typbyval;
	typalign = typentry->typalign;

	/*
	 * Since we probably will need to scan array2 multiple times, it's
	 * worthwhile to use deconstruct_array on it.  We scan array1 the hard way
	 * however, since we very likely won't need to look at all of it.
	 */
	if (FUNC9(array2))
	{
		/* This should be safe even if input is read-only */
		FUNC13(&(array2->xpn));
		values2 = array2->xpn.dvalues;
		nulls2 = array2->xpn.dnulls;
		nelems2 = array2->xpn.nelems;
	}
	else
		FUNC12((ArrayType *) array2,
						  element_type, typlen, typbyval, typalign,
						  &values2, &nulls2, &nelems2);

	/*
	 * Apply the comparison operator to each pair of array elements.
	 */
	FUNC6(*locfcinfo, &typentry->eq_opr_finfo, 2,
							 collation, NULL, NULL);

	/* Loop over source data */
	nelems1 = FUNC3(FUNC2(array1), FUNC0(array1));
	FUNC11(&it1, array1);

	for (i = 0; i < nelems1; i++)
	{
		Datum		elt1;
		bool		isnull1;

		/* Get element, checking for NULL */
		elt1 = FUNC10(&it1, &isnull1, i, typlen, typbyval, typalign);

		/*
		 * We assume that the comparison operator is strict, so a NULL can't
		 * match anything.  XXX this diverges from the "NULL=NULL" behavior of
		 * array_eq, should we act like that?
		 */
		if (isnull1)
		{
			if (matchall)
			{
				result = false;
				break;
			}
			continue;
		}

		for (j = 0; j < nelems2; j++)
		{
			Datum		elt2 = values2[j];
			bool		isnull2 = nulls2 ? nulls2[j] : false;
			bool		oprresult;

			if (isnull2)
				continue;		/* can't match */

			/*
			 * Apply the operator to the element pair
			 */
			locfcinfo->args[0].value = elt1;
			locfcinfo->args[0].isnull = false;
			locfcinfo->args[1].value = elt2;
			locfcinfo->args[1].isnull = false;
			locfcinfo->isnull = false;
			oprresult = FUNC4(FUNC5(locfcinfo));
			if (oprresult)
				break;
		}

		if (j < nelems2)
		{
			/* found a match for elt1 */
			if (!matchall)
			{
				result = true;
				break;
			}
		}
		else
		{
			/* no match for elt1 */
			if (matchall)
			{
				result = false;
				break;
			}
		}
	}

	return result;
}