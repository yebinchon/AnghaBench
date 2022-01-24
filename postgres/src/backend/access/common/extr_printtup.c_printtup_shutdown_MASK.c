#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * tmpcontext; TYPE_1__ buf; int /*<<< orphan*/ * attrinfo; int /*<<< orphan*/ * myinfo; } ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_2__ DR_printtup ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(DestReceiver *self)
{
	DR_printtup *myState = (DR_printtup *) self;

	if (myState->myinfo)
		FUNC1(myState->myinfo);
	myState->myinfo = NULL;

	myState->attrinfo = NULL;

	if (myState->buf.data)
		FUNC1(myState->buf.data);
	myState->buf.data = NULL;

	if (myState->tmpcontext)
		FUNC0(myState->tmpcontext);
	myState->tmpcontext = NULL;
}