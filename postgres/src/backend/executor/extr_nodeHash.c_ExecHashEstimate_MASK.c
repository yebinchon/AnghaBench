#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  instrument; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;
struct TYPE_7__ {scalar_t__ nworkers; int /*<<< orphan*/  estimator; } ;
typedef  TYPE_2__ ParallelContext ;
typedef  TYPE_3__ HashState ;
typedef  int /*<<< orphan*/  HashInstrumentation ;

/* Variables and functions */
 int /*<<< orphan*/  SharedHashInfo ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hinstrument ; 
 size_t FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void
FUNC5(HashState *node, ParallelContext *pcxt)
{
	size_t		size;

	/* don't need this if not instrumenting or no workers */
	if (!node->ps.instrument || pcxt->nworkers == 0)
		return;

	size = FUNC1(pcxt->nworkers, sizeof(HashInstrumentation));
	size = FUNC0(size, FUNC2(SharedHashInfo, hinstrument));
	FUNC3(&pcxt->estimator, size);
	FUNC4(&pcxt->estimator, 1);
}