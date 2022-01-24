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
struct nn_sinproc {int /*<<< orphan*/  fsm; int /*<<< orphan*/  pipebase; int /*<<< orphan*/  msgqueue; int /*<<< orphan*/  msg; int /*<<< orphan*/  event_connect; int /*<<< orphan*/  event_sent; int /*<<< orphan*/  event_received; int /*<<< orphan*/  event_disconnect; int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6 (struct nn_sinproc *self)
{
    FUNC2 (&self->item);
    FUNC0 (&self->event_disconnect);
    FUNC0 (&self->event_received);
    FUNC0 (&self->event_sent);
    FUNC0 (&self->event_connect);
    FUNC3 (&self->msg);
    FUNC4 (&self->msgqueue);
    FUNC5 (&self->pipebase);
    FUNC1 (&self->fsm);
}