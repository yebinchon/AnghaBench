#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_2__* rd_index; } ;
struct TYPE_20__ {int sk_attno; } ;
struct TYPE_19__ {int /*<<< orphan*/ * scan; int /*<<< orphan*/  iscan; int /*<<< orphan*/ * snapshot; int /*<<< orphan*/  slot; TYPE_5__* irel; TYPE_5__* heap_rel; } ;
struct TYPE_17__ {int* values; } ;
struct TYPE_18__ {TYPE_1__ indkey; } ;
typedef  int /*<<< orphan*/  SysScanDescData ;
typedef  TYPE_3__* SysScanDesc ;
typedef  int /*<<< orphan*/ * Snapshot ;
typedef  TYPE_4__* ScanKey ;
typedef  TYPE_5__* Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IgnoreSystemIndexes ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 

SysScanDesc
FUNC11(Relation heapRelation,
						   Relation indexRelation,
						   Snapshot snapshot,
						   int nkeys, ScanKey key)
{
	SysScanDesc sysscan;
	int			i;

	/* REINDEX can probably be a hard error here ... */
	if (FUNC3(FUNC5(indexRelation)))
		FUNC6(ERROR, "cannot do ordered scan on index \"%s\", because it is being reindexed",
			 FUNC4(indexRelation));
	/* ... but we only throw a warning about violating IgnoreSystemIndexes */
	if (IgnoreSystemIndexes)
		FUNC6(WARNING, "using index \"%s\" despite IgnoreSystemIndexes",
			 FUNC4(indexRelation));

	sysscan = (SysScanDesc) FUNC9(sizeof(SysScanDescData));

	sysscan->heap_rel = heapRelation;
	sysscan->irel = indexRelation;
	sysscan->slot = FUNC10(heapRelation, NULL);

	if (snapshot == NULL)
	{
		Oid			relid = FUNC5(heapRelation);

		snapshot = FUNC2(FUNC0(relid));
		sysscan->snapshot = snapshot;
	}
	else
	{
		/* Caller is responsible for any snapshot. */
		sysscan->snapshot = NULL;
	}

	/* Change attribute numbers to be index column numbers. */
	for (i = 0; i < nkeys; i++)
	{
		int			j;

		for (j = 0; j < FUNC1(indexRelation); j++)
		{
			if (key[i].sk_attno == indexRelation->rd_index->indkey.values[j])
			{
				key[i].sk_attno = j + 1;
				break;
			}
		}
		if (j == FUNC1(indexRelation))
			FUNC6(ERROR, "column is not in index");
	}

	sysscan->iscan = FUNC7(heapRelation, indexRelation,
									 snapshot, nkeys, 0);
	FUNC8(sysscan->iscan, key, nkeys, NULL, 0);
	sysscan->scan = NULL;

	return sysscan;
}