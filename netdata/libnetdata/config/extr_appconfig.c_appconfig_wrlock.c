
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int mutex; } ;


 int netdata_mutex_lock (int *) ;

__attribute__((used)) static inline void appconfig_wrlock(struct config *root) {
    netdata_mutex_lock(&root->mutex);
}
