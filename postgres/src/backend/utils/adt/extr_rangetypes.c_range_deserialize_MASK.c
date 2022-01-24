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
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_8__ {scalar_t__ type_id; TYPE_1__* rngelemtype; } ;
typedef  TYPE_2__ TypeCacheEntry ;
struct TYPE_9__ {int infinite; int inclusive; int lower; void* val; } ;
struct TYPE_7__ {int typbyval; char typalign; int /*<<< orphan*/  typlen; } ;
typedef  int /*<<< orphan*/  RangeType ;
typedef  TYPE_3__ RangeBound ;
typedef  scalar_t__ Pointer ;
typedef  void* Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char RANGE_EMPTY ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 char RANGE_LB_INC ; 
 char RANGE_LB_INF ; 
 char RANGE_UB_INC ; 
 char RANGE_UB_INF ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,char,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC7 (scalar_t__,int,int /*<<< orphan*/ ) ; 

void
FUNC8(TypeCacheEntry *typcache, const RangeType *range,
				  RangeBound *lower, RangeBound *upper, bool *empty)
{
	char		flags;
	int16		typlen;
	bool		typbyval;
	char		typalign;
	Pointer		ptr;
	Datum		lbound;
	Datum		ubound;

	/* assert caller passed the right typcache entry */
	FUNC0(FUNC3(range) == typcache->type_id);

	/* fetch the flag byte from datum's last byte */
	flags = *((const char *) range + FUNC4(range) - 1);

	/* fetch information about range's element type */
	typlen = typcache->rngelemtype->typlen;
	typbyval = typcache->rngelemtype->typbyval;
	typalign = typcache->rngelemtype->typalign;

	/* initialize data pointer just after the range OID */
	ptr = (Pointer) (range + 1);

	/* fetch lower bound, if any */
	if (FUNC1(flags))
	{
		/* att_align_pointer cannot be necessary here */
		lbound = FUNC7(ptr, typbyval, typlen);
		ptr = (Pointer) FUNC5(ptr, typlen, ptr);
	}
	else
		lbound = (Datum) 0;

	/* fetch upper bound, if any */
	if (FUNC2(flags))
	{
		ptr = (Pointer) FUNC6(ptr, typalign, typlen, ptr);
		ubound = FUNC7(ptr, typbyval, typlen);
		/* no need for att_addlength_pointer */
	}
	else
		ubound = (Datum) 0;

	/* emit results */

	*empty = (flags & RANGE_EMPTY) != 0;

	lower->val = lbound;
	lower->infinite = (flags & RANGE_LB_INF) != 0;
	lower->inclusive = (flags & RANGE_LB_INC) != 0;
	lower->lower = true;

	upper->val = ubound;
	upper->infinite = (flags & RANGE_UB_INF) != 0;
	upper->inclusive = (flags & RANGE_UB_INC) != 0;
	upper->lower = false;
}