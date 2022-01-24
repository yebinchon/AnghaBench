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
struct mp_refqueue {int num_queue; int pos; int second_field; int eof; int /*<<< orphan*/  next; int /*<<< orphan*/ * queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct mp_refqueue *q)
{
    for (int n = 0; n < q->num_queue; n++)
        FUNC1(q->queue[n]);
    q->num_queue = 0;
    q->pos = -1;
    q->second_field = false;
    q->eof = false;
    FUNC0(&q->next);
}