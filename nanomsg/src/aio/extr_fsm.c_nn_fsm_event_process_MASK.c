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
struct nn_fsm_event {int src; int type; int /*<<< orphan*/  fsm; int /*<<< orphan*/ * srcptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,void*) ; 

void FUNC1 (struct nn_fsm_event *self)
{
    int src;
    int type;
    void *srcptr;

    src = self->src;
    type = self->type;
    srcptr = self->srcptr;
    self->src = -1;
    self->type = -1;
    self->srcptr = NULL;

    FUNC0 (self->fsm, src, type, srcptr);
}