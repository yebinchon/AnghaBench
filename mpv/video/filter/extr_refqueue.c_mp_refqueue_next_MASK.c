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
struct mp_refqueue {int pos; int second_field; int num_queue; int needed_past_frames; int /*<<< orphan*/ * queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_refqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mp_refqueue *q)
{
    if (!FUNC1(q))
        return;

    q->pos--;
    q->second_field = false;

    FUNC0(q->pos >= -1 && q->pos < q->num_queue);

    // Discard unneeded past frames.
    while (q->num_queue - (q->pos + 1) > q->needed_past_frames) {
        FUNC0(q->num_queue > 0);
        FUNC2(q->queue[q->num_queue - 1]);
        q->num_queue--;
    }

    FUNC0(q->pos >= -1 && q->pos < q->num_queue);
}