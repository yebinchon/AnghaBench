#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ nitems; } ;
struct TYPE_7__ {scalar_t__ nlocks; TYPE_5__ jitarr; TYPE_5__ dsmarr; TYPE_5__ filearr; TYPE_5__ snapshotarr; TYPE_5__ tupdescarr; TYPE_5__ planrefarr; TYPE_5__ relrefarr; TYPE_5__ catlistrefarr; TYPE_5__ catrefarr; TYPE_5__ bufferarr; struct TYPE_7__* firstchild; } ;
typedef  TYPE_1__* ResourceOwner ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* CurrentResourceOwner ; 
 scalar_t__ MAX_RESOWNER_LOCKS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(ResourceOwner owner)
{
	/* We had better not be deleting CurrentResourceOwner ... */
	FUNC0(owner != CurrentResourceOwner);

	/* And it better not own any resources, either */
	FUNC0(owner->bufferarr.nitems == 0);
	FUNC0(owner->catrefarr.nitems == 0);
	FUNC0(owner->catlistrefarr.nitems == 0);
	FUNC0(owner->relrefarr.nitems == 0);
	FUNC0(owner->planrefarr.nitems == 0);
	FUNC0(owner->tupdescarr.nitems == 0);
	FUNC0(owner->snapshotarr.nitems == 0);
	FUNC0(owner->filearr.nitems == 0);
	FUNC0(owner->dsmarr.nitems == 0);
	FUNC0(owner->jitarr.nitems == 0);
	FUNC0(owner->nlocks == 0 || owner->nlocks == MAX_RESOWNER_LOCKS + 1);

	/*
	 * Delete children.  The recursive call will delink the child from me, so
	 * just iterate as long as there is a child.
	 */
	while (owner->firstchild != NULL)
		FUNC4(owner->firstchild);

	/*
	 * We delink the owner from its parent before deleting it, so that if
	 * there's an error we won't have deleted/busted owners still attached to
	 * the owner tree.  Better a leak than a crash.
	 */
	FUNC2(owner, NULL);

	/* And free the object. */
	FUNC1(&(owner->bufferarr));
	FUNC1(&(owner->catrefarr));
	FUNC1(&(owner->catlistrefarr));
	FUNC1(&(owner->relrefarr));
	FUNC1(&(owner->planrefarr));
	FUNC1(&(owner->tupdescarr));
	FUNC1(&(owner->snapshotarr));
	FUNC1(&(owner->filearr));
	FUNC1(&(owner->dsmarr));
	FUNC1(&(owner->jitarr));

	FUNC3(owner);
}