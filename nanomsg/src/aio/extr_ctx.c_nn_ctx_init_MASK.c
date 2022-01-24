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
struct nn_pool {int dummy; } ;
struct nn_ctx {int /*<<< orphan*/  onleave; int /*<<< orphan*/  eventsto; int /*<<< orphan*/  events; struct nn_pool* pool; int /*<<< orphan*/  sync; } ;
typedef  int /*<<< orphan*/  nn_ctx_onleave ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (struct nn_ctx *self, struct nn_pool *pool,
    nn_ctx_onleave onleave)
{
    FUNC0 (&self->sync);
    self->pool = pool;
    FUNC1 (&self->events);
    FUNC1 (&self->eventsto);
    self->onleave = onleave;
}