#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nfields; int* dnulls; int /*<<< orphan*/ * fvalue; int /*<<< orphan*/ * dvalues; } ;
typedef  TYPE_1__ ExpandedRecordHeader ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int) ; 

Datum
FUNC4(ExpandedRecordHeader *erh, int fnumber,
							bool *isnull)
{
	if (fnumber > 0)
	{
		/* Empty record has null fields */
		if (FUNC0(erh))
		{
			*isnull = true;
			return (Datum) 0;
		}
		/* Make sure we have deconstructed form */
		FUNC1(erh);
		/* Out-of-range field number reads as null */
		if (FUNC3(fnumber > erh->nfields))
		{
			*isnull = true;
			return (Datum) 0;
		}
		*isnull = erh->dnulls[fnumber - 1];
		return erh->dvalues[fnumber - 1];
	}
	else
	{
		/* System columns read as null if we haven't got flat tuple */
		if (erh->fvalue == NULL)
		{
			*isnull = true;
			return (Datum) 0;
		}
		/* heap_getsysattr doesn't actually use tupdesc, so just pass null */
		return FUNC2(erh->fvalue, fnumber, NULL, isnull);
	}
}