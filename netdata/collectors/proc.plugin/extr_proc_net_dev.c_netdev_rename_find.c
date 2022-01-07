
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct netdev_rename {scalar_t__ hash; int host_device; struct netdev_rename* next; } ;


 struct netdev_rename* netdev_rename_root ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static struct netdev_rename *netdev_rename_find(const char *host_device, uint32_t hash) {
    struct netdev_rename *r;

    for(r = netdev_rename_root; r ; r = r->next)
        if(r->hash == hash && !strcmp(host_device, r->host_device))
            return r;

    return ((void*)0);
}
