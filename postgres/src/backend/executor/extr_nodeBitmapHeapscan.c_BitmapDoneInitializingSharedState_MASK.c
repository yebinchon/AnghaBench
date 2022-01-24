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
struct TYPE_3__ {int /*<<< orphan*/  cv; int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ ParallelBitmapHeapState ;

/* Variables and functions */
 int /*<<< orphan*/  BM_FINISHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(ParallelBitmapHeapState *pstate)
{
	FUNC1(&pstate->mutex);
	pstate->state = BM_FINISHED;
	FUNC2(&pstate->mutex);
	FUNC0(&pstate->cv);
}