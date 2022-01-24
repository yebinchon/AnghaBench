#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_10__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_9__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_8__ {int /*<<< orphan*/  typname; } ;
struct TYPE_7__ {int natts; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_type ;

/* Variables and functions */
 int FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPI_ERROR_NOATTRIBUTE ; 
 scalar_t__ SPI_ERROR_TYPUNKNOWN ; 
 scalar_t__ SPI_result ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int) ; 
 int /*<<< orphan*/  TYPEOID ; 
 TYPE_3__* FUNC7 (TYPE_1__*,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

char *
FUNC9(TupleDesc tupdesc, int fnumber)
{
	Oid			typoid;
	HeapTuple	typeTuple;
	char	   *result;

	SPI_result = 0;

	if (fnumber > tupdesc->natts || fnumber == 0 ||
		fnumber <= FirstLowInvalidHeapAttributeNumber)
	{
		SPI_result = SPI_ERROR_NOATTRIBUTE;
		return NULL;
	}

	if (fnumber > 0)
		typoid = FUNC7(tupdesc, fnumber - 1)->atttypid;
	else
		typoid = (FUNC6(fnumber))->atttypid;

	typeTuple = FUNC5(TYPEOID, FUNC3(typoid));

	if (!FUNC1(typeTuple))
	{
		SPI_result = SPI_ERROR_TYPUNKNOWN;
		return NULL;
	}

	result = FUNC8(FUNC2(((Form_pg_type) FUNC0(typeTuple))->typname));
	FUNC4(typeTuple);
	return result;
}