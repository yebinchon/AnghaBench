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
struct web_client {int /*<<< orphan*/  id; int /*<<< orphan*/  pollinfo_filecopy_slot; scalar_t__ pollinfo_slot; } ;
struct TYPE_6__ {int /*<<< orphan*/  disconnected; } ;
struct TYPE_5__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  flags; int /*<<< orphan*/  p; scalar_t__ data; } ;
typedef  TYPE_1__ POLLINFO ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  POLLINFO_FLAG_DONT_CLOSE ; 
 int /*<<< orphan*/  WEB_CLIENT_FLAG_DONT_CLOSE_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct web_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct web_client*) ; 
 TYPE_2__* worker_private ; 

__attribute__((used)) static void FUNC5(POLLINFO *pi) {
    worker_private->disconnected++;

    struct web_client *w = (struct web_client *)pi->data;

    w->pollinfo_slot = 0;
    if(FUNC2(w->pollinfo_filecopy_slot)) {
        POLLINFO *fpi = FUNC1(pi->p, w->pollinfo_filecopy_slot);  // POLLINFO of the client socket
        (void)fpi;

        FUNC0(D_WEB_CLIENT, "%llu: THE CLIENT WILL BE FRED BY READING FILE JOB ON FD %d", w->id, fpi->fd);
    }
    else {
        if(FUNC3(w, WEB_CLIENT_FLAG_DONT_CLOSE_SOCKET))
            pi->flags |= POLLINFO_FLAG_DONT_CLOSE;

        FUNC0(D_WEB_CLIENT, "%llu: CLOSING CLIENT FD %d", w->id, pi->fd);
        FUNC4(w);
    }
}