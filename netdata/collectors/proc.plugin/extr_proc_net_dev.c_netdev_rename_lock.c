
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev {int dummy; } ;


 int netdata_mutex_lock (int *) ;
 int netdata_mutex_unlock (int *) ;
 int netdev_rename (struct netdev*) ;
 int netdev_rename_mutex ;

__attribute__((used)) static inline void netdev_rename_lock(struct netdev *d) {
    netdata_mutex_lock(&netdev_rename_mutex);
    netdev_rename(d);
    netdata_mutex_unlock(&netdev_rename_mutex);
}
