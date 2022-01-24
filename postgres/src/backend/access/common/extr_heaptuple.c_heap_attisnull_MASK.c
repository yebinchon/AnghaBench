#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_12__ {int /*<<< orphan*/  t_bits; } ;
struct TYPE_11__ {scalar_t__ atthasmissing; } ;
struct TYPE_10__ {TYPE_8__* t_data; } ;
struct TYPE_9__ {int natts; } ;
typedef  TYPE_2__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_8__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
#define  MaxCommandIdAttributeNumber 133 
#define  MaxTransactionIdAttributeNumber 132 
#define  MinCommandIdAttributeNumber 131 
#define  MinTransactionIdAttributeNumber 130 
#define  SelfItemPointerAttributeNumber 129 
#define  TableOidAttributeNumber 128 
 TYPE_5__* FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

bool
FUNC6(HeapTuple tup, int attnum, TupleDesc tupleDesc)
{
	/*
	 * We allow a NULL tupledesc for relations not expected to have missing
	 * values, such as catalog relations and indexes.
	 */
	FUNC0(!tupleDesc || attnum <= tupleDesc->natts);
	if (attnum > (int) FUNC1(tup->t_data))
	{
		if (tupleDesc && FUNC3(tupleDesc, attnum - 1)->atthasmissing)
			return false;
		else
			return true;
	}

	if (attnum > 0)
	{
		if (FUNC2(tup))
			return false;
		return FUNC4(attnum - 1, tup->t_data->t_bits);
	}

	switch (attnum)
	{
		case TableOidAttributeNumber:
		case SelfItemPointerAttributeNumber:
		case MinTransactionIdAttributeNumber:
		case MinCommandIdAttributeNumber:
		case MaxTransactionIdAttributeNumber:
		case MaxCommandIdAttributeNumber:
			/* these are never null */
			break;

		default:
			FUNC5(ERROR, "invalid attnum: %d", attnum);
	}

	return false;
}