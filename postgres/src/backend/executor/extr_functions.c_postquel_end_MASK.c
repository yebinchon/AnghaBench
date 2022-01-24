#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* qd; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ execution_state ;
struct TYPE_9__ {scalar_t__ operation; TYPE_2__* dest; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* rDestroy ) (TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ CMD_UTILITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  F_EXEC_DONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(execution_state *es)
{
	/* mark status done to ensure we don't do ExecutorEnd twice */
	es->status = F_EXEC_DONE;

	/* Utility commands don't need Executor. */
	if (es->qd->operation != CMD_UTILITY)
	{
		FUNC1(es->qd);
		FUNC0(es->qd);
	}

	es->qd->dest->rDestroy(es->qd->dest);

	FUNC2(es->qd);
	es->qd = NULL;
}