#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nredirected; size_t* redirected; int* marked; } ;
typedef  TYPE_1__ PruneState ;
typedef  size_t OffsetNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MaxHeapTuplesPerPage ; 

__attribute__((used)) static void
FUNC1(PruneState *prstate,
						   OffsetNumber offnum, OffsetNumber rdoffnum)
{
	FUNC0(prstate->nredirected < MaxHeapTuplesPerPage);
	prstate->redirected[prstate->nredirected * 2] = offnum;
	prstate->redirected[prstate->nredirected * 2 + 1] = rdoffnum;
	prstate->nredirected++;
	FUNC0(!prstate->marked[offnum]);
	prstate->marked[offnum] = true;
	FUNC0(!prstate->marked[rdoffnum]);
	prstate->marked[rdoffnum] = true;
}