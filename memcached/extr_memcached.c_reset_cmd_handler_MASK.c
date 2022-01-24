#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cmd; scalar_t__ rbytes; int /*<<< orphan*/ * item; int /*<<< orphan*/  substate; } ;
typedef  TYPE_1__ conn ;

/* Variables and functions */
 int /*<<< orphan*/  bin_no_state ; 
 int /*<<< orphan*/  conn_parse_cmd ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  conn_waiting ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(conn *c) {
    c->cmd = -1;
    c->substate = bin_no_state;
    if(c->item != NULL) {
        FUNC2(c->item);
        c->item = NULL;
    }
    FUNC1(c);
    if (c->rbytes > 0) {
        FUNC0(c, conn_parse_cmd);
    } else {
        FUNC0(c, conn_waiting);
    }
}