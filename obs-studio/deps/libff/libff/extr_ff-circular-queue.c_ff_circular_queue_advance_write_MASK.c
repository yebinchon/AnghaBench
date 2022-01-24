#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ff_circular_queue {size_t write_index; int capacity; int /*<<< orphan*/  size; void** slots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ff_circular_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct ff_circular_queue*) ; 

void FUNC2(struct ff_circular_queue *cq, void *item)
{
	cq->slots[cq->write_index] = item;
	cq->write_index = (cq->write_index + 1) % cq->capacity;

	FUNC0(cq);
	++cq->size;
	FUNC1(cq);
}