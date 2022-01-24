#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct web_client {int /*<<< orphan*/  ofd; int /*<<< orphan*/  id; int /*<<< orphan*/  pollinfo_slot; scalar_t__ pollinfo_filecopy_slot; } ;
struct TYPE_3__ {int /*<<< orphan*/  fd; scalar_t__ data; } ;
typedef  TYPE_1__ POLLINFO ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct web_client*) ; 

__attribute__((used)) static void FUNC3(POLLINFO *pi) {
    struct web_client *w = (struct web_client *)pi->data;
    FUNC0(D_WEB_CLIENT, "%llu: RELEASE FILE READ ON FD %d", w->id, pi->fd);

    w->pollinfo_filecopy_slot = 0;

    if(FUNC1(!w->pollinfo_slot)) {
        FUNC0(D_WEB_CLIENT, "%llu: CROSS WEB CLIENT CLEANUP (iFD %d, oFD %d)", w->id, pi->fd, w->ofd);
        FUNC2(w);
    }
}