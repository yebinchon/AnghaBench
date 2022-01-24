#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ev_flags; scalar_t__ io_wraplist; int /*<<< orphan*/  event; int /*<<< orphan*/  state; TYPE_1__* thread; int /*<<< orphan*/  sfd; } ;
typedef  TYPE_2__ conn ;
struct TYPE_6__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EV_PERSIST ; 
 int EV_READ ; 
 int /*<<< orphan*/  conn_mwrite ; 
 int /*<<< orphan*/  conn_new_cmd ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(conn *c) {
    c->ev_flags = EV_READ | EV_PERSIST;
    FUNC4(&c->event, c->sfd, c->ev_flags, event_handler, (void *)c);
    FUNC3(c->thread->base, &c->event);
    c->state = conn_new_cmd;

    // TODO: call conn_cleanup/fail/etc
    if (FUNC2(&c->event, 0) == -1) {
        FUNC5("event_add");
    }
#ifdef EXTSTORE
    // If we had IO objects, process
    if (c->io_wraplist) {
        //assert(c->io_wrapleft == 0); // assert no more to process
        conn_set_state(c, conn_mwrite);
        drive_machine(c);
    }
#endif
}