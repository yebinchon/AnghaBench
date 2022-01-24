#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct web_client {int ifd; int ofd; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  sends; } ;
struct TYPE_4__ {int fd; scalar_t__ data; } ;
typedef  TYPE_1__ POLLINFO ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 short POLLIN ; 
 short POLLOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct web_client*) ; 
 scalar_t__ FUNC3 (struct web_client*) ; 
 scalar_t__ FUNC4 (struct web_client*) ; 
 int FUNC5 (struct web_client*) ; 
 TYPE_2__* worker_private ; 

__attribute__((used)) static int FUNC6(POLLINFO *pi, short int *events) {
    worker_private->sends++;

    struct web_client *w = (struct web_client *)pi->data;
    int fd = pi->fd;

    FUNC0(D_WEB_CLIENT, "%llu: sending data on fd %d.", w->id, fd);

    if(FUNC1(FUNC4(w) < 0))
        return -1;

    if(FUNC1(w->ifd == fd && FUNC2(w)))
        *events |= POLLIN;

    if(FUNC1(w->ofd == fd && FUNC3(w)))
        *events |= POLLOUT;

    return FUNC5(w);
}