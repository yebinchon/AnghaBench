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
struct TYPE_6__ {int noreply; int sfd; size_t wsize; size_t wbytes; int /*<<< orphan*/  write_and_go; scalar_t__ wbuf; scalar_t__ wcurr; scalar_t__ iovused; scalar_t__ msgused; scalar_t__ msgcurr; } ;
typedef  TYPE_1__ conn ;
struct TYPE_7__ {int verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_new_cmd ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_write ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char const*,int) ; 
 TYPE_2__ settings ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(conn *c, const char *str) {
    size_t len;

    FUNC1(c != NULL);

    if (c->noreply) {
        if (settings.verbose > 1)
            FUNC3(stderr, ">%d NOREPLY %s\n", c->sfd, str);
        c->noreply = false;
        FUNC2(c, conn_new_cmd);
        return;
    }

    if (settings.verbose > 1)
        FUNC3(stderr, ">%d %s\n", c->sfd, str);

    /* Nuke a partial output... */
    c->msgcurr = 0;
    c->msgused = 0;
    c->iovused = 0;
    FUNC0(c);

    len = FUNC5(str);
    if ((len + 2) > c->wsize) {
        /* ought to be always enough. just fail for simplicity */
        str = "SERVER_ERROR output line too long";
        len = FUNC5(str);
    }

    FUNC4(c->wbuf, str, len);
    FUNC4(c->wbuf + len, "\r\n", 2);
    c->wbytes = len + 2;
    c->wcurr = c->wbuf;

    FUNC2(c, conn_write);
    c->write_and_go = conn_new_cmd;
    return;
}