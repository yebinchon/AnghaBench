#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_9__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_8__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_7__ {int natts; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int FirstLowInvalidHeapAttributeNumber ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SPI_ERROR_NOATTRIBUTE ; 
 scalar_t__ SPI_result ; 
 TYPE_5__* FUNC1 (int) ; 
 TYPE_3__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,TYPE_1__*,int*) ; 

char *
FUNC5(HeapTuple tuple, TupleDesc tupdesc, int fnumber)
{
	Datum		val;
	bool		isnull;
	Oid			typoid,
				foutoid;
	bool		typisvarlena;

	SPI_result = 0;

	if (fnumber > tupdesc->natts || fnumber == 0 ||
		fnumber <= FirstLowInvalidHeapAttributeNumber)
	{
		SPI_result = SPI_ERROR_NOATTRIBUTE;
		return NULL;
	}

	val = FUNC4(tuple, fnumber, tupdesc, &isnull);
	if (isnull)
		return NULL;

	if (fnumber > 0)
		typoid = FUNC2(tupdesc, fnumber - 1)->atttypid;
	else
		typoid = (FUNC1(fnumber))->atttypid;

	FUNC3(typoid, &foutoid, &typisvarlena);

	return FUNC0(foutoid, val);
}