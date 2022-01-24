#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TuplesortInstrumentation ;
struct TYPE_10__ {scalar_t__ nworkers; int /*<<< orphan*/  estimator; } ;
struct TYPE_7__ {int /*<<< orphan*/  instrument; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; } ;
typedef  TYPE_3__ SortState ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_4__ ParallelContext ;

/* Variables and functions */
 int /*<<< orphan*/  SharedSortInfo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sinstrument ; 

void
FUNC5(SortState *node, ParallelContext *pcxt)
{
	Size		size;

	/* don't need this if not instrumenting or no workers */
	if (!node->ss.ps.instrument || pcxt->nworkers == 0)
		return;

	size = FUNC1(pcxt->nworkers, sizeof(TuplesortInstrumentation));
	size = FUNC0(size, FUNC2(SharedSortInfo, sinstrument));
	FUNC3(&pcxt->estimator, size);
	FUNC4(&pcxt->estimator, 1);
}