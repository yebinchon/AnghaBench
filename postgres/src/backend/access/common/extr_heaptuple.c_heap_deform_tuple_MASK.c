#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  bits8 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_16__ {scalar_t__ attcacheoff; int attlen; int /*<<< orphan*/  attalign; } ;
struct TYPE_15__ {TYPE_2__* t_data; } ;
struct TYPE_14__ {int t_hoff; int /*<<< orphan*/ * t_bits; } ;
struct TYPE_13__ {int natts; } ;
typedef  TYPE_2__* HeapTupleHeader ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int,int) ; 
 TYPE_4__* FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int,int*) ; 

void
FUNC10(HeapTuple tuple, TupleDesc tupleDesc,
				  Datum *values, bool *isnull)
{
	HeapTupleHeader tup = tuple->t_data;
	bool		hasnulls = FUNC0(tuple);
	int			tdesc_natts = tupleDesc->natts;
	int			natts;			/* number of atts to extract */
	int			attnum;
	char	   *tp;				/* ptr to tuple data */
	uint32		off;			/* offset in tuple data */
	bits8	   *bp = tup->t_bits;	/* ptr to null bitmap in tuple */
	bool		slow = false;	/* can we use/set attcacheoff? */

	natts = FUNC1(tup);

	/*
	 * In inheritance situations, it is possible that the given tuple actually
	 * has more fields than the caller is expecting.  Don't run off the end of
	 * the caller's arrays.
	 */
	natts = FUNC2(natts, tdesc_natts);

	tp = (char *) tup + tup->t_hoff;

	off = 0;

	for (attnum = 0; attnum < natts; attnum++)
	{
		Form_pg_attribute thisatt = FUNC3(tupleDesc, attnum);

		if (hasnulls && FUNC7(attnum, bp))
		{
			values[attnum] = (Datum) 0;
			isnull[attnum] = true;
			slow = true;		/* can't use attcacheoff anymore */
			continue;
		}

		isnull[attnum] = false;

		if (!slow && thisatt->attcacheoff >= 0)
			off = thisatt->attcacheoff;
		else if (thisatt->attlen == -1)
		{
			/*
			 * We can only cache the offset for a varlena attribute if the
			 * offset is already suitably aligned, so that there would be no
			 * pad bytes in any case: then the offset will be valid for either
			 * an aligned or unaligned value.
			 */
			if (!slow &&
				off == FUNC5(off, thisatt->attalign))
				thisatt->attcacheoff = off;
			else
			{
				off = FUNC6(off, thisatt->attalign, -1,
										tp + off);
				slow = true;
			}
		}
		else
		{
			/* not varlena, so safe to use att_align_nominal */
			off = FUNC5(off, thisatt->attalign);

			if (!slow)
				thisatt->attcacheoff = off;
		}

		values[attnum] = FUNC8(thisatt, tp + off);

		off = FUNC4(off, thisatt->attlen, tp + off);

		if (thisatt->attlen <= 0)
			slow = true;		/* can't use attcacheoff anymore */
	}

	/*
	 * If tuple doesn't have all the atts indicated by tupleDesc, read the
	 * rest as nulls or missing values as appropriate.
	 */
	for (; attnum < tdesc_natts; attnum++)
		values[attnum] = FUNC9(tupleDesc, attnum + 1, &isnull[attnum]);
}