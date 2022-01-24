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
struct ff_circular_queue {int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * slots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ff_circular_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ff_circular_queue *cq)
{
	FUNC1(cq);

	if (cq->slots != NULL)
		FUNC0(cq->slots);

	FUNC3(&cq->mutex);
	FUNC2(&cq->cond);
}