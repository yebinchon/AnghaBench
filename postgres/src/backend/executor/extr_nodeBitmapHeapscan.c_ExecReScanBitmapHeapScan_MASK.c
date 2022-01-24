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
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ss_currentScanDesc; } ;
struct TYPE_9__ {scalar_t__ vmbuffer; scalar_t__ pvmbuffer; int initialized; TYPE_5__ ss; int /*<<< orphan*/ * shared_prefetch_iterator; int /*<<< orphan*/ * shared_tbmiterator; int /*<<< orphan*/ * prefetch_iterator; int /*<<< orphan*/ * tbmres; int /*<<< orphan*/ * tbmiterator; int /*<<< orphan*/ * tbm; } ;
struct TYPE_8__ {int /*<<< orphan*/ * chgParam; } ;
typedef  TYPE_1__ PlanState ;
typedef  TYPE_2__ BitmapHeapScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(BitmapHeapScanState *node)
{
	PlanState  *outerPlan = FUNC3(node);

	/* rescan to release any page pin */
	FUNC4(node->ss.ss_currentScanDesc, NULL);

	/* release bitmaps and buffers if any */
	if (node->tbmiterator)
		FUNC5(node->tbmiterator);
	if (node->prefetch_iterator)
		FUNC5(node->prefetch_iterator);
	if (node->shared_tbmiterator)
		FUNC6(node->shared_tbmiterator);
	if (node->shared_prefetch_iterator)
		FUNC6(node->shared_prefetch_iterator);
	if (node->tbm)
		FUNC7(node->tbm);
	if (node->vmbuffer != InvalidBuffer)
		FUNC2(node->vmbuffer);
	if (node->pvmbuffer != InvalidBuffer)
		FUNC2(node->pvmbuffer);
	node->tbm = NULL;
	node->tbmiterator = NULL;
	node->tbmres = NULL;
	node->prefetch_iterator = NULL;
	node->initialized = false;
	node->shared_tbmiterator = NULL;
	node->shared_prefetch_iterator = NULL;
	node->vmbuffer = InvalidBuffer;
	node->pvmbuffer = InvalidBuffer;

	FUNC1(&node->ss);

	/*
	 * if chgParam of subnode is not null then plan will be re-scanned by
	 * first ExecProcNode.
	 */
	if (outerPlan->chgParam == NULL)
		FUNC0(outerPlan);
}