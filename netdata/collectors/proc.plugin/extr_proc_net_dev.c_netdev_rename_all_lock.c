
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev {struct netdev* next; } ;


 int netdata_mutex_lock (int *) ;
 int netdata_mutex_unlock (int *) ;
 scalar_t__ netdev_pending_renames ;
 int netdev_rename (struct netdev*) ;
 int netdev_rename_mutex ;
 struct netdev* netdev_root ;

__attribute__((used)) static inline void netdev_rename_all_lock(void) {
    netdata_mutex_lock(&netdev_rename_mutex);

    struct netdev *d;
    for(d = netdev_root; d ; d = d->next)
        netdev_rename(d);

    netdev_pending_renames = 0;
    netdata_mutex_unlock(&netdev_rename_mutex);
}
