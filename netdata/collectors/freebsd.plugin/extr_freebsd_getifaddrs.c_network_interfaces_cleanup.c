
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_network_interface {struct cgroup_network_interface* next; scalar_t__ updated; } ;


 scalar_t__ likely (int) ;
 int network_interface_free (struct cgroup_network_interface*) ;
 scalar_t__ network_interfaces_added ;
 scalar_t__ network_interfaces_found ;
 struct cgroup_network_interface* network_interfaces_last_used ;
 struct cgroup_network_interface* network_interfaces_root ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void network_interfaces_cleanup() {
    if (likely(network_interfaces_found == network_interfaces_added)) return;

    struct cgroup_network_interface *ifm = network_interfaces_root, *last = ((void*)0);
    while(ifm) {
        if (unlikely(!ifm->updated)) {


            if (network_interfaces_last_used == ifm)
                network_interfaces_last_used = last;

            struct cgroup_network_interface *t = ifm;

            if (ifm == network_interfaces_root || !last)
                network_interfaces_root = ifm = ifm->next;

            else
                last->next = ifm = ifm->next;

            t->next = ((void*)0);
            network_interface_free(t);
        }
        else {
            last = ifm;
            ifm->updated = 0;
            ifm = ifm->next;
        }
    }
}
