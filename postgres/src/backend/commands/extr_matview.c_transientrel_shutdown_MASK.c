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
struct TYPE_2__ {int /*<<< orphan*/ * transientrel; int /*<<< orphan*/  ti_options; int /*<<< orphan*/  bistate; } ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_1__ DR_transientrel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(DestReceiver *self)
{
	DR_transientrel *myState = (DR_transientrel *) self;

	FUNC0(myState->bistate);

	FUNC2(myState->transientrel, myState->ti_options);

	/* close transientrel, but keep lock until commit */
	FUNC1(myState->transientrel, NoLock);
	myState->transientrel = NULL;
}