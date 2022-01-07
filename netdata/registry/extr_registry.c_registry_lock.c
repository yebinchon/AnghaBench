
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int netdata_mutex_lock (int *) ;
 TYPE_1__ registry ;

__attribute__((used)) static inline void registry_lock(void) {
    netdata_mutex_lock(&registry.lock);
}
