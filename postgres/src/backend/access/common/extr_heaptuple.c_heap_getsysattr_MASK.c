#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_4__ {int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_self; } ;
typedef  TYPE_1__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  MaxCommandIdAttributeNumber 133 
#define  MaxTransactionIdAttributeNumber 132 
#define  MinCommandIdAttributeNumber 131 
#define  MinTransactionIdAttributeNumber 130 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
#define  SelfItemPointerAttributeNumber 129 
#define  TableOidAttributeNumber 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

Datum
FUNC9(HeapTuple tup, int attnum, TupleDesc tupleDesc, bool *isnull)
{
	Datum		result;

	FUNC0(tup);

	/* Currently, no sys attribute ever reads as NULL. */
	*isnull = false;

	switch (attnum)
	{
		case SelfItemPointerAttributeNumber:
			/* pass-by-reference datatype */
			result = FUNC6(&(tup->t_self));
			break;
		case MinTransactionIdAttributeNumber:
			result = FUNC7(FUNC4(tup->t_data));
			break;
		case MaxTransactionIdAttributeNumber:
			result = FUNC7(FUNC3(tup->t_data));
			break;
		case MinCommandIdAttributeNumber:
		case MaxCommandIdAttributeNumber:

			/*
			 * cmin and cmax are now both aliases for the same field, which
			 * can in fact also be a combo command id.  XXX perhaps we should
			 * return the "real" cmin or cmax if possible, that is if we are
			 * inside the originating transaction?
			 */
			result = FUNC1(FUNC2(tup->t_data));
			break;
		case TableOidAttributeNumber:
			result = FUNC5(tup->t_tableOid);
			break;
		default:
			FUNC8(ERROR, "invalid attnum: %d", attnum);
			result = 0;			/* keep compiler quiet */
			break;
	}
	return result;
}