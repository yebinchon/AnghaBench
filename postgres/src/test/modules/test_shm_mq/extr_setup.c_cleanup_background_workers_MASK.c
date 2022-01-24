#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t nworkers; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ worker_state ;
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(dsm_segment *seg, Datum arg)
{
	worker_state *wstate = (worker_state *) FUNC0(arg);

	while (wstate->nworkers > 0)
	{
		--wstate->nworkers;
		FUNC1(wstate->handle[wstate->nworkers]);
	}
}