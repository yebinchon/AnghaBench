
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int global_statistics_mutex ;
 int netdata_mutex_lock (int *) ;

__attribute__((used)) static inline void global_statistics_lock(void) {
    netdata_mutex_lock(&global_statistics_mutex);
}
