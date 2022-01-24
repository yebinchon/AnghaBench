#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ attisdropped; } ;
struct TYPE_3__ {int relnatts; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 int /*<<< orphan*/  ERROR ; 
 int FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int InvalidAttrNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Bitmapset *
FUNC12(Oid relOid, Bitmapset *columns)
{
	Bitmapset  *result;
	HeapTuple	tuple;
	AttrNumber	natts;
	AttrNumber	attno;
	int			index;

	/* if no whole of row references, do not anything */
	index = InvalidAttrNumber - FirstLowInvalidHeapAttributeNumber;
	if (!FUNC10(index, columns))
		return columns;

	/* obtain number of attributes */
	tuple = FUNC5(RELOID, FUNC3(relOid));
	if (!FUNC1(tuple))
		FUNC11(ERROR, "cache lookup failed for relation %u", relOid);
	natts = ((Form_pg_class) FUNC0(tuple))->relnatts;
	FUNC4(tuple);

	/* fix up the given columns */
	result = FUNC8(columns);
	result = FUNC9(result, index);

	for (attno = 1; attno <= natts; attno++)
	{
		tuple = FUNC6(ATTNUM,
								FUNC3(relOid),
								FUNC2(attno));
		if (!FUNC1(tuple))
			continue;

		if (((Form_pg_attribute) FUNC0(tuple))->attisdropped)
			continue;

		index = attno - FirstLowInvalidHeapAttributeNumber;

		result = FUNC7(result, index);

		FUNC4(tuple);
	}
	return result;
}