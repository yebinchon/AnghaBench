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
struct nn_queue {int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; } ;

/* Variables and functions */

void FUNC0 (struct nn_queue *self)
{
    self->head = NULL;
    self->tail = NULL;
}