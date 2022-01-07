
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_network_interface {scalar_t__ container_device; scalar_t__ host_device; struct cgroup_network_interface* next; } ;
struct cgroup {struct cgroup_network_interface* interfaces; } ;


 int freez (void*) ;
 int netdev_rename_device_del (scalar_t__) ;

__attribute__((used)) static inline void free_cgroup_network_interfaces(struct cgroup *cg) {
    while(cg->interfaces) {
        struct cgroup_network_interface *i = cg->interfaces;
        cg->interfaces = i->next;


        netdev_rename_device_del(i->host_device);

        freez((void *)i->host_device);
        freez((void *)i->container_device);
        freez((void *)i);
    }
}
