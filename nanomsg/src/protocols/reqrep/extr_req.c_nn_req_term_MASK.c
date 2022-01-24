#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  request; int /*<<< orphan*/  reply; int /*<<< orphan*/  timer; } ;
struct nn_req {int /*<<< orphan*/  xreq; int /*<<< orphan*/  fsm; TYPE_1__ task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (struct nn_req *self)
{
    FUNC3 (&self->task.timer);
    FUNC2 (&self->task);
    FUNC1 (&self->task.reply);
    FUNC1 (&self->task.request);
    FUNC0 (&self->fsm);
    FUNC4 (&self->xreq);
}