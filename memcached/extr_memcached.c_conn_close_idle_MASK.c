#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ last_cmd_time; scalar_t__ state; int sfd; TYPE_2__* thread; } ;
typedef  TYPE_3__ conn ;
struct TYPE_11__ {scalar_t__ idle_timeout; int verbose; } ;
struct TYPE_8__ {int /*<<< orphan*/  idle_kicks; } ;
struct TYPE_9__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  conn_closing ; 
 scalar_t__ conn_new_cmd ; 
 scalar_t__ conn_read ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_4__ settings ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3(conn *c) {
    if (settings.idle_timeout > 0 &&
        (current_time - c->last_cmd_time) > settings.idle_timeout) {
        if (c->state != conn_new_cmd && c->state != conn_read) {
            if (settings.verbose > 1)
                FUNC2(stderr,
                    "fd %d wants to timeout, but isn't in read state", c->sfd);
            return;
        }

        if (settings.verbose > 1)
            FUNC2(stderr, "Closing idle fd %d\n", c->sfd);

        c->thread->stats.idle_kicks++;

        FUNC0(c, conn_closing);
        FUNC1(c);
    }
}