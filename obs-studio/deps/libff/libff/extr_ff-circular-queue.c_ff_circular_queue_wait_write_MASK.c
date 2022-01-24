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
struct ff_circular_queue {scalar_t__ size; scalar_t__ capacity; int /*<<< orphan*/  abort; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ff_circular_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct ff_circular_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct ff_circular_queue*) ; 

void FUNC3(struct ff_circular_queue *cq)
{
	FUNC0(cq);

	while (cq->size >= cq->capacity && !cq->abort)
		FUNC2(cq);

	FUNC1(cq);
}