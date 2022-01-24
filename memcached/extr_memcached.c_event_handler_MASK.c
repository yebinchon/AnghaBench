#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {short which; int const sfd; } ;
typedef  TYPE_1__ conn ;
struct TYPE_6__ {scalar_t__ verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ settings ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4(const int fd, const short which, void *arg) {
    conn *c;

    c = (conn *)arg;
    FUNC0(c != NULL);

    c->which = which;

    /* sanity */
    if (fd != c->sfd) {
        if (settings.verbose > 0)
            FUNC3(stderr, "Catastrophic: event fd doesn't match conn fd!\n");
        FUNC1(c);
        return;
    }

    FUNC2(c);

    /* wait for next event */
    return;
}