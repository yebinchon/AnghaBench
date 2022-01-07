
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_network_interface {struct cgroup_network_interface* name; int st_events; int st_drops; int st_errors; int st_packets; int st_bandwidth; } ;


 int freez (struct cgroup_network_interface*) ;
 scalar_t__ likely (int ) ;
 int network_interfaces_added ;
 int rrdset_is_obsolete (int ) ;

__attribute__((used)) static void network_interface_free(struct cgroup_network_interface *ifm) {
    if (likely(ifm->st_bandwidth))
        rrdset_is_obsolete(ifm->st_bandwidth);
    if (likely(ifm->st_packets))
        rrdset_is_obsolete(ifm->st_packets);
    if (likely(ifm->st_errors))
        rrdset_is_obsolete(ifm->st_errors);
    if (likely(ifm->st_drops))
        rrdset_is_obsolete(ifm->st_drops);
    if (likely(ifm->st_events))
        rrdset_is_obsolete(ifm->st_events);

    network_interfaces_added--;
    freez(ifm->name);
    freez(ifm);
}
