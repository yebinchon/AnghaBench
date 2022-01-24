#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  (* EstimateDSMForeignScan ) (TYPE_2__*,TYPE_1__*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  pscan_len; TYPE_3__* fdwroutine; } ;
struct TYPE_8__ {int /*<<< orphan*/  estimator; } ;
typedef  TYPE_1__ ParallelContext ;
typedef  TYPE_2__ ForeignScanState ;
typedef  TYPE_3__ FdwRoutine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 

void
FUNC3(ForeignScanState *node, ParallelContext *pcxt)
{
	FdwRoutine *fdwroutine = node->fdwroutine;

	if (fdwroutine->EstimateDSMForeignScan)
	{
		node->pscan_len = fdwroutine->EstimateDSMForeignScan(node, pcxt);
		FUNC0(&pcxt->estimator, node->pscan_len);
		FUNC1(&pcxt->estimator, 1);
	}
}