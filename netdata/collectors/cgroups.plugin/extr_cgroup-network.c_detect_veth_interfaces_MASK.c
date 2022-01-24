#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iface {scalar_t__ ifindex; scalar_t__ iflink; int /*<<< orphan*/  device; struct iface* next; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iface*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct iface*) ; 
 scalar_t__ FUNC4 (struct iface*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/ * netdata_configured_host_prefix ; 
 struct iface* FUNC6 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC8(pid_t pid) {
    struct iface *cgroup = NULL;
    struct iface *host, *h, *c;

    host = FUNC6("host", netdata_configured_host_prefix);
    if(!host) {
        errno = 0;
        FUNC2("cannot read host interface list.");
        goto cleanup;
    }

    if(!FUNC1(host)) {
        errno = 0;
        FUNC2("there are no double-linked host interfaces available.");
        goto cleanup;
    }

    if(FUNC7(netdata_configured_host_prefix, pid)) {
        errno = 0;
        FUNC2("cannot switch to the namespace of pid %u", (unsigned int) pid);
        goto cleanup;
    }

#ifdef NETDATA_INTERNAL_CHECKS
    info("switched to namespaces of pid %d", pid);
#endif

    cgroup = FUNC6("cgroup", NULL);
    if(!cgroup) {
        errno = 0;
        FUNC2("cannot read cgroup interface list.");
        goto cleanup;
    }

    if(!FUNC1(cgroup)) {
        errno = 0;
        FUNC2("there are not double-linked cgroup interfaces available.");
        goto cleanup;
    }

    for(h = host; h ; h = h->next) {
        if(FUNC4(h)) {
            for (c = cgroup; c; c = c->next) {
                if(FUNC4(c) && h->ifindex == c->iflink && h->iflink == c->ifindex) {
                    FUNC0(h->device, c->device);
                }
            }
        }
    }

cleanup:
    FUNC3(cgroup);
    FUNC3(host);
}