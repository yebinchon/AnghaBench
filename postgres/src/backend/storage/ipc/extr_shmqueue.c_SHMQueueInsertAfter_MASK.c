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
struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef  TYPE_1__ SHM_QUEUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(SHM_QUEUE *queue, SHM_QUEUE *elem)
{
	SHM_QUEUE  *nextPtr = queue->next;

	FUNC0(FUNC1(queue));
	FUNC0(FUNC1(elem));

	elem->prev = nextPtr->prev;
	elem->next = queue->next;
	queue->next = elem;
	nextPtr->prev = elem;
}