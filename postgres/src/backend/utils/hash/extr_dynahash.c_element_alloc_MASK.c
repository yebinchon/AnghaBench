#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* link; } ;
struct TYPE_9__ {int entrysize; TYPE_1__* freeList; } ;
struct TYPE_8__ {scalar_t__ (* alloc ) (int) ;int /*<<< orphan*/  hcxt; scalar_t__ isfixed; TYPE_3__* hctl; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; TYPE_4__* freeList; } ;
typedef  int Size ;
typedef  TYPE_2__ HTAB ;
typedef  TYPE_3__ HASHHDR ;
typedef  TYPE_4__ HASHELEMENT ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentDynaHashCxt ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bool
FUNC5(HTAB *hashp, int nelem, int freelist_idx)
{
	HASHHDR    *hctl = hashp->hctl;
	Size		elementSize;
	HASHELEMENT *firstElement;
	HASHELEMENT *tmpElement;
	HASHELEMENT *prevElement;
	int			i;

	if (hashp->isfixed)
		return false;

	/* Each element has a HASHELEMENT header plus user data. */
	elementSize = FUNC1(sizeof(HASHELEMENT)) + FUNC1(hctl->entrysize);

	CurrentDynaHashCxt = hashp->hcxt;
	firstElement = (HASHELEMENT *) hashp->alloc(nelem * elementSize);

	if (!firstElement)
		return false;

	/* prepare to link all the new entries into the freelist */
	prevElement = NULL;
	tmpElement = firstElement;
	for (i = 0; i < nelem; i++)
	{
		tmpElement->link = prevElement;
		prevElement = tmpElement;
		tmpElement = (HASHELEMENT *) (((char *) tmpElement) + elementSize);
	}

	/* if partitioned, must lock to touch freeList */
	if (FUNC0(hctl))
		FUNC2(&hctl->freeList[freelist_idx].mutex);

	/* freelist could be nonempty if two backends did this concurrently */
	firstElement->link = hctl->freeList[freelist_idx].freeList;
	hctl->freeList[freelist_idx].freeList = prevElement;

	if (FUNC0(hctl))
		FUNC3(&hctl->freeList[freelist_idx].mutex);

	return true;
}