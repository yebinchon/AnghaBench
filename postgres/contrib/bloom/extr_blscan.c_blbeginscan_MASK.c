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
struct TYPE_6__ {int /*<<< orphan*/ * sign; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {TYPE_2__* opaque; int /*<<< orphan*/  indexRelation; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  int /*<<< orphan*/  BloomScanOpaqueData ;
typedef  TYPE_2__* BloomScanOpaque ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

IndexScanDesc
FUNC3(Relation r, int nkeys, int norderbys)
{
	IndexScanDesc scan;
	BloomScanOpaque so;

	scan = FUNC0(r, nkeys, norderbys);

	so = (BloomScanOpaque) FUNC2(sizeof(BloomScanOpaqueData));
	FUNC1(&so->state, scan->indexRelation);
	so->sign = NULL;

	scan->opaque = so;

	return scan;
}