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
struct TYPE_6__ {int /*<<< orphan*/  bo_bdesc; int /*<<< orphan*/  bo_pagesPerRange; int /*<<< orphan*/  bo_rmAccess; } ;
struct TYPE_5__ {TYPE_2__* opaque; int /*<<< orphan*/  xs_snapshot; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__ BrinOpaque ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

IndexScanDesc
FUNC4(Relation r, int nkeys, int norderbys)
{
	IndexScanDesc scan;
	BrinOpaque *opaque;

	scan = FUNC0(r, nkeys, norderbys);

	opaque = (BrinOpaque *) FUNC3(sizeof(BrinOpaque));
	opaque->bo_rmAccess = FUNC1(r, &opaque->bo_pagesPerRange,
											   scan->xs_snapshot);
	opaque->bo_bdesc = FUNC2(r);
	scan->opaque = opaque;

	return scan;
}