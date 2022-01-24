#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ wbytes; int noreply; scalar_t__ wbuf; scalar_t__ wcurr; int /*<<< orphan*/  write_and_go; } ;
typedef  TYPE_1__ conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  conn_new_cmd ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_write ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 

__attribute__((used)) static void FUNC3(conn *c, bool use_noreply) {
    FUNC0(c != NULL);
    FUNC0(c->wbytes != 0);

    if (c->noreply && use_noreply) {
        c->noreply = false;
        FUNC1(c, conn_new_cmd);
        return;
    }

    FUNC2(c->wbuf + c->wbytes, "\r\n", 2);
    c->wbytes += 2;
    c->wcurr = c->wbuf;

    FUNC1(c, conn_write);
    c->write_and_go = conn_new_cmd;
    return;
}