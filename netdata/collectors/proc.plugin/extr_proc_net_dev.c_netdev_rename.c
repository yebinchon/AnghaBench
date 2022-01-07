
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_rename {int processed; } ;
struct netdev {int hash; int name; } ;


 int netdev_pending_renames ;
 int netdev_rename_cgroup (struct netdev*,struct netdev_rename*) ;
 struct netdev_rename* netdev_rename_find (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void netdev_rename(struct netdev *d) {
    struct netdev_rename *r = netdev_rename_find(d->name, d->hash);
    if(unlikely(r && !r->processed)) {
        netdev_rename_cgroup(d, r);
        r->processed = 1;
        netdev_pending_renames--;
    }
}
