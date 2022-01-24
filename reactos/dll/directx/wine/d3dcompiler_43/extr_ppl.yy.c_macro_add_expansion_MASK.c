#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nargs; char* curarg; scalar_t__ curargsize; scalar_t__ curargalloc; int /*<<< orphan*/ * ppargs; TYPE_1__* ppp; } ;
typedef  TYPE_2__ macexpstackentry_t ;
struct TYPE_4__ {scalar_t__ expanding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	macexpstackentry_t *mep = FUNC3();

	FUNC0(mep->ppp->expanding == 0);

	mep->ppargs[mep->nargs-1] = FUNC2(mep->curarg ? mep->curarg : "");
	FUNC1(mep->curarg);
	mep->curargalloc = mep->curargsize = 0;
	mep->curarg = NULL;
}