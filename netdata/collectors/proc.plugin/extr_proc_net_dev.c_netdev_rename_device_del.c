
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct netdev_rename {scalar_t__ hash; scalar_t__ container_device; scalar_t__ container_name; scalar_t__ host_device; int processed; struct netdev_rename* next; } ;


 int freez (void*) ;
 int info (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int netdata_mutex_lock (int *) ;
 int netdata_mutex_unlock (int *) ;
 int netdev_pending_renames ;
 int netdev_rename_mutex ;
 struct netdev_rename* netdev_rename_root ;
 scalar_t__ simple_hash (char const*) ;
 int strcmp (char const*,scalar_t__) ;

void netdev_rename_device_del(const char *host_device) {
    netdata_mutex_lock(&netdev_rename_mutex);

    struct netdev_rename *r, *last = ((void*)0);

    uint32_t hash = simple_hash(host_device);
    for(r = netdev_rename_root; r ; last = r, r = r->next) {
        if (r->hash == hash && !strcmp(host_device, r->host_device)) {
            if (netdev_rename_root == r)
                netdev_rename_root = r->next;
            else if (last)
                last->next = r->next;

            if(!r->processed)
                netdev_pending_renames--;

            info("CGROUP: unregistered network interface rename for '%s' as '%s' under '%s'", r->host_device, r->container_device, r->container_name);

            freez((void *) r->host_device);
            freez((void *) r->container_name);
            freez((void *) r->container_device);
            freez((void *) r);
            break;
        }
    }

    netdata_mutex_unlock(&netdev_rename_mutex);
}
