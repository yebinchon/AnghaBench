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
struct cgroup_network_interface {struct cgroup_network_interface* name; int /*<<< orphan*/  st_events; int /*<<< orphan*/  st_drops; int /*<<< orphan*/  st_errors; int /*<<< orphan*/  st_packets; int /*<<< orphan*/  st_bandwidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup_network_interface*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  network_interfaces_added ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cgroup_network_interface *ifm) {
    if (FUNC1(ifm->st_bandwidth))
        FUNC2(ifm->st_bandwidth);
    if (FUNC1(ifm->st_packets))
        FUNC2(ifm->st_packets);
    if (FUNC1(ifm->st_errors))
        FUNC2(ifm->st_errors);
    if (FUNC1(ifm->st_drops))
        FUNC2(ifm->st_drops);
    if (FUNC1(ifm->st_events))
        FUNC2(ifm->st_events);

    network_interfaces_added--;
    FUNC0(ifm->name);
    FUNC0(ifm);
}