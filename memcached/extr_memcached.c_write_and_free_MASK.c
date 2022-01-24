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
struct TYPE_5__ {char* write_and_free; char* wcurr; int wbytes; int /*<<< orphan*/  write_and_go; } ;
typedef  TYPE_1__ conn ;

/* Variables and functions */
 int /*<<< orphan*/  conn_new_cmd ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_write ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC2(conn *c, char *buf, int bytes) {
    if (buf) {
        c->write_and_free = buf;
        c->wcurr = buf;
        c->wbytes = bytes;
        FUNC0(c, conn_write);
        c->write_and_go = conn_new_cmd;
    } else {
        FUNC1(c, "SERVER_ERROR out of memory writing stats");
    }
}