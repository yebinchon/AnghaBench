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
struct TYPE_5__ {int rbytes; char* rcurr; char* rbuf; int rsize; int /*<<< orphan*/  last_cmd_time; } ;
typedef  TYPE_1__ conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  conn_closing ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_time ; 
 char* FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(conn *c) {
    char *el, *cont;

    if (c->rbytes == 0)
        return 0;

    el = FUNC2(c->rcurr, '\n', c->rbytes);
    if (!el) {
        if (c->rbytes > 1024) {
            /*
             * We didn't have a '\n' in the first k. This _has_ to be a
             * large multiget, if not we should just nuke the connection.
             */
            char *ptr = c->rcurr;
            while (*ptr == ' ') { /* ignore leading whitespaces */
                ++ptr;
            }

            if (ptr - c->rcurr > 100 ||
                (FUNC4(ptr, "get ", 4) && FUNC4(ptr, "gets ", 5))) {

                FUNC1(c, conn_closing);
                return 1;
            }
        }

        return 0;
    }
    cont = el + 1;
    if ((el - c->rcurr) > 1 && *(el - 1) == '\r') {
        el--;
    }
    *el = '\0';

    FUNC0(cont <= (c->rcurr + c->rbytes));

    c->last_cmd_time = current_time;
    FUNC3(c, c->rcurr);

    c->rbytes -= (cont - c->rcurr);
    c->rcurr = cont;

    FUNC0(c->rcurr <= (c->rbuf + c->rsize));

    return 1;
}