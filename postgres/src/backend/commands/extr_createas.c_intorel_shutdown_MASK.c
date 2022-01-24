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
struct TYPE_2__ {int /*<<< orphan*/ * rel; int /*<<< orphan*/  ti_options; int /*<<< orphan*/  bistate; } ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_1__ DR_intorel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(DestReceiver *self)
{
	DR_intorel *myState = (DR_intorel *) self;

	FUNC0(myState->bistate);

	FUNC2(myState->rel, myState->ti_options);

	/* close rel, but keep lock until commit */
	FUNC1(myState->rel, NoLock);
	myState->rel = NULL;
}