#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * markTuples; int /*<<< orphan*/  currTuples; scalar_t__ numKilled; int /*<<< orphan*/ * killedItems; int /*<<< orphan*/ * arrayContext; int /*<<< orphan*/ * arrayKeys; scalar_t__ numArrayKeys; int /*<<< orphan*/ * arrayKeyData; int /*<<< orphan*/ * keyData; int /*<<< orphan*/  markPos; int /*<<< orphan*/  currPos; } ;
struct TYPE_5__ {int numberOfKeys; TYPE_2__* opaque; int /*<<< orphan*/  xs_itupdesc; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * ScanKey ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  int /*<<< orphan*/  BTScanOpaqueData ;
typedef  TYPE_2__* BTScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (int) ; 

IndexScanDesc
FUNC5(Relation rel, int nkeys, int norderbys)
{
	IndexScanDesc scan;
	BTScanOpaque so;

	/* no order by operators allowed */
	FUNC0(norderbys == 0);

	/* get the scan */
	scan = FUNC3(rel, nkeys, norderbys);

	/* allocate private workspace */
	so = (BTScanOpaque) FUNC4(sizeof(BTScanOpaqueData));
	FUNC1(so->currPos);
	FUNC1(so->markPos);
	if (scan->numberOfKeys > 0)
		so->keyData = (ScanKey) FUNC4(scan->numberOfKeys * sizeof(ScanKeyData));
	else
		so->keyData = NULL;

	so->arrayKeyData = NULL;	/* assume no array keys for now */
	so->numArrayKeys = 0;
	so->arrayKeys = NULL;
	so->arrayContext = NULL;

	so->killedItems = NULL;		/* until needed */
	so->numKilled = 0;

	/*
	 * We don't know yet whether the scan will be index-only, so we do not
	 * allocate the tuple workspace arrays until btrescan.  However, we set up
	 * scan->xs_itupdesc whether we'll need it or not, since that's so cheap.
	 */
	so->currTuples = *(so->markTuples = NULL);

	scan->xs_itupdesc = FUNC2(rel);

	scan->opaque = so;

	return scan;
}