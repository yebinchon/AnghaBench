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
typedef  scalar_t__ uint32_t ;
struct cgroup_network_interface {scalar_t__ hash; char const* name; struct cgroup_network_interface* next; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 struct cgroup_network_interface* FUNC0 (int,int) ; 
 int /*<<< orphan*/  network_interfaces_added ; 
 struct cgroup_network_interface* network_interfaces_last_used ; 
 struct cgroup_network_interface* network_interfaces_root ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 char const* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct cgroup_network_interface *FUNC6(const char *name) {
    struct cgroup_network_interface *ifm;

    uint32_t hash = FUNC1(name);

    // search it, from the last position to the end
    for(ifm = network_interfaces_last_used ; ifm ; ifm = ifm->next) {
        if (FUNC5(hash == ifm->hash && !FUNC2(name, ifm->name))) {
            network_interfaces_last_used = ifm->next;
            return ifm;
        }
    }

    // search it from the beginning to the last position we used
    for(ifm = network_interfaces_root ; ifm != network_interfaces_last_used ; ifm = ifm->next) {
        if (FUNC5(hash == ifm->hash && !FUNC2(name, ifm->name))) {
            network_interfaces_last_used = ifm->next;
            return ifm;
        }
    }

    // create a new one
    ifm = FUNC0(1, sizeof(struct cgroup_network_interface));
    ifm->name = FUNC3(name);
    ifm->hash = FUNC1(ifm->name);
    ifm->len = FUNC4(ifm->name);
    network_interfaces_added++;

    // link it to the end
    if (network_interfaces_root) {
        struct cgroup_network_interface *e;
        for(e = network_interfaces_root; e->next ; e = e->next) ;
        e->next = ifm;
    }
    else
        network_interfaces_root = ifm;

    return ifm;
}