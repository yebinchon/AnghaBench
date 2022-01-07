
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iface {scalar_t__ ifindex; scalar_t__ iflink; int device; struct iface* next; } ;
typedef scalar_t__ pid_t ;


 int add_device (int ,int ) ;
 int eligible_ifaces (struct iface*) ;
 scalar_t__ errno ;
 int error (char*,...) ;
 int free_host_ifaces (struct iface*) ;
 scalar_t__ iface_is_eligible (struct iface*) ;
 int info (char*,scalar_t__) ;
 int * netdata_configured_host_prefix ;
 struct iface* read_proc_net_dev (char*,int *) ;
 scalar_t__ switch_namespace (int *,scalar_t__) ;

void detect_veth_interfaces(pid_t pid) {
    struct iface *cgroup = ((void*)0);
    struct iface *host, *h, *c;

    host = read_proc_net_dev("host", netdata_configured_host_prefix);
    if(!host) {
        errno = 0;
        error("cannot read host interface list.");
        goto cleanup;
    }

    if(!eligible_ifaces(host)) {
        errno = 0;
        error("there are no double-linked host interfaces available.");
        goto cleanup;
    }

    if(switch_namespace(netdata_configured_host_prefix, pid)) {
        errno = 0;
        error("cannot switch to the namespace of pid %u", (unsigned int) pid);
        goto cleanup;
    }





    cgroup = read_proc_net_dev("cgroup", ((void*)0));
    if(!cgroup) {
        errno = 0;
        error("cannot read cgroup interface list.");
        goto cleanup;
    }

    if(!eligible_ifaces(cgroup)) {
        errno = 0;
        error("there are not double-linked cgroup interfaces available.");
        goto cleanup;
    }

    for(h = host; h ; h = h->next) {
        if(iface_is_eligible(h)) {
            for (c = cgroup; c; c = c->next) {
                if(iface_is_eligible(c) && h->ifindex == c->iflink && h->iflink == c->ifindex) {
                    add_device(h->device, c->device);
                }
            }
        }
    }

cleanup:
    free_host_ifaces(cgroup);
    free_host_ifaces(host);
}
