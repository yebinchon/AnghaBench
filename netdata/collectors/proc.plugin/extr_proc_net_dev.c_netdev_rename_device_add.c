
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct netdev_rename {void* container_name; void* container_device; void* host_device; scalar_t__ processed; struct netdev_rename* next; int hash; } ;


 struct netdev_rename* callocz (int,int) ;
 int freez (void*) ;
 int info (char*,void*,void*,void*) ;
 int netdata_mutex_lock (int *) ;
 int netdata_mutex_unlock (int *) ;
 int netdev_pending_renames ;
 struct netdev_rename* netdev_rename_find (char const*,int ) ;
 int netdev_rename_mutex ;
 struct netdev_rename* netdev_rename_root ;
 int simple_hash (char const*) ;
 scalar_t__ strcmp (void*,char const*) ;
 void* strdupz (char const*) ;

void netdev_rename_device_add(const char *host_device, const char *container_device, const char *container_name) {
    netdata_mutex_lock(&netdev_rename_mutex);

    uint32_t hash = simple_hash(host_device);
    struct netdev_rename *r = netdev_rename_find(host_device, hash);
    if(!r) {
        r = callocz(1, sizeof(struct netdev_rename));
        r->host_device = strdupz(host_device);
        r->container_device = strdupz(container_device);
        r->container_name = strdupz(container_name);
        r->hash = hash;
        r->next = netdev_rename_root;
        r->processed = 0;
        netdev_rename_root = r;
        netdev_pending_renames++;
        info("CGROUP: registered network interface rename for '%s' as '%s' under '%s'", r->host_device, r->container_device, r->container_name);
    }
    else {
        if(strcmp(r->container_device, container_device) != 0 || strcmp(r->container_name, container_name) != 0) {
            freez((void *) r->container_device);
            freez((void *) r->container_name);

            r->container_device = strdupz(container_device);
            r->container_name = strdupz(container_name);
            r->processed = 0;
            netdev_pending_renames++;
            info("CGROUP: altered network interface rename for '%s' as '%s' under '%s'", r->host_device, r->container_device, r->container_name);
        }
    }

    netdata_mutex_unlock(&netdev_rename_mutex);
}
