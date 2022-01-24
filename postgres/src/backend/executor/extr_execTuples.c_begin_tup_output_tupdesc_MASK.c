#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlotOps ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_6__ {TYPE_2__* dest; int /*<<< orphan*/  slot; } ;
typedef  TYPE_1__ TupOutputState ;
struct TYPE_7__ {int /*<<< orphan*/  (* rStartup ) (TYPE_2__*,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ DestReceiver ;

/* Variables and functions */
 scalar_t__ CMD_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

TupOutputState *
FUNC3(DestReceiver *dest,
						 TupleDesc tupdesc,
						 const TupleTableSlotOps *tts_ops)
{
	TupOutputState *tstate;

	tstate = (TupOutputState *) FUNC1(sizeof(TupOutputState));

	tstate->slot = FUNC0(tupdesc, tts_ops);
	tstate->dest = dest;

	tstate->dest->rStartup(tstate->dest, (int) CMD_SELECT, tupdesc);

	return tstate;
}