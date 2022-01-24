#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__ const* prev; } ;
typedef  int Size ;
typedef  TYPE_1__ const SHM_QUEUE ;
typedef  int /*<<< orphan*/ * Pointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 

Pointer
FUNC2(const SHM_QUEUE *queue, const SHM_QUEUE *curElem, Size linkOffset)
{
	SHM_QUEUE  *elemPtr = curElem->prev;

	FUNC0(FUNC1(curElem));

	if (elemPtr == queue)		/* back to the queue head? */
		return NULL;

	return (Pointer) (((char *) elemPtr) - linkOffset);
}