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
typedef  int /*<<< orphan*/  uint32_t ;
struct netdev_rename {void* container_name; void* container_device; void* host_device; scalar_t__ processed; struct netdev_rename* next; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 struct netdev_rename* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  netdev_pending_renames ; 
 struct netdev_rename* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netdev_rename_mutex ; 
 struct netdev_rename* netdev_rename_root ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (void*,char const*) ; 
 void* FUNC8 (char const*) ; 

void FUNC9(const char *host_device, const char *container_device, const char *container_name) {
    FUNC3(&netdev_rename_mutex);

    uint32_t hash = FUNC6(host_device);
    struct netdev_rename *r = FUNC5(host_device, hash);
    if(!r) {
        r = FUNC0(1, sizeof(struct netdev_rename));
        r->host_device      = FUNC8(host_device);
        r->container_device = FUNC8(container_device);
        r->container_name   = FUNC8(container_name);
        r->hash             = hash;
        r->next             = netdev_rename_root;
        r->processed        = 0;
        netdev_rename_root  = r;
        netdev_pending_renames++;
        FUNC2("CGROUP: registered network interface rename for '%s' as '%s' under '%s'", r->host_device, r->container_device, r->container_name);
    }
    else {
        if(FUNC7(r->container_device, container_device) != 0 || FUNC7(r->container_name, container_name) != 0) {
            FUNC1((void *) r->container_device);
            FUNC1((void *) r->container_name);

            r->container_device = FUNC8(container_device);
            r->container_name   = FUNC8(container_name);
            r->processed        = 0;
            netdev_pending_renames++;
            FUNC2("CGROUP: altered network interface rename for '%s' as '%s' under '%s'", r->host_device, r->container_device, r->container_name);
        }
    }

    FUNC4(&netdev_rename_mutex);
}