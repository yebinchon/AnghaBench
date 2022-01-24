#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_2__* rd_index; } ;
struct TYPE_21__ {int sk_attno; } ;
struct TYPE_20__ {int /*<<< orphan*/ * iscan; int /*<<< orphan*/ * scan; int /*<<< orphan*/ * snapshot; int /*<<< orphan*/  slot; TYPE_5__* irel; TYPE_5__* heap_rel; } ;
struct TYPE_18__ {int* values; } ;
struct TYPE_19__ {TYPE_1__ indkey; } ;
typedef  int /*<<< orphan*/  SysScanDescData ;
typedef  TYPE_3__* SysScanDesc ;
typedef  int /*<<< orphan*/ * Snapshot ;
typedef  TYPE_4__* ScanKey ;
typedef  TYPE_5__* Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IgnoreSystemIndexes ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,int,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *) ; 

SysScanDesc
FUNC12(Relation heapRelation,
				   Oid indexId,
				   bool indexOK,
				   Snapshot snapshot,
				   int nkeys, ScanKey key)
{
	SysScanDesc sysscan;
	Relation	irel;

	if (indexOK &&
		!IgnoreSystemIndexes &&
		!FUNC3(indexId))
		irel = FUNC7(indexId, AccessShareLock);
	else
		irel = NULL;

	sysscan = (SysScanDesc) FUNC9(sizeof(SysScanDescData));

	sysscan->heap_rel = heapRelation;
	sysscan->irel = irel;
	sysscan->slot = FUNC11(heapRelation, NULL);

	if (snapshot == NULL)
	{
		Oid			relid = FUNC4(heapRelation);

		snapshot = FUNC2(FUNC0(relid));
		sysscan->snapshot = snapshot;
	}
	else
	{
		/* Caller is responsible for any snapshot. */
		sysscan->snapshot = NULL;
	}

	if (irel)
	{
		int			i;

		/* Change attribute numbers to be index column numbers. */
		for (i = 0; i < nkeys; i++)
		{
			int			j;

			for (j = 0; j < FUNC1(irel); j++)
			{
				if (key[i].sk_attno == irel->rd_index->indkey.values[j])
				{
					key[i].sk_attno = j + 1;
					break;
				}
			}
			if (j == FUNC1(irel))
				FUNC5(ERROR, "column is not in index");
		}

		sysscan->iscan = FUNC6(heapRelation, irel,
										 snapshot, nkeys, 0);
		FUNC8(sysscan->iscan, key, nkeys, NULL, 0);
		sysscan->scan = NULL;
	}
	else
	{
		/*
		 * We disallow synchronized scans when forced to use a heapscan on a
		 * catalog.  In most cases the desired rows are near the front, so
		 * that the unpredictable start point of a syncscan is a serious
		 * disadvantage; and there are no compensating advantages, because
		 * it's unlikely that such scans will occur in parallel.
		 */
		sysscan->scan = FUNC10(heapRelation, snapshot,
											  nkeys, key,
											  true, false);
		sysscan->iscan = NULL;
	}

	return sysscan;
}