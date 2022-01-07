
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_mutex ;
 int netdata_mutex_lock (int *) ;

__attribute__((used)) static inline void log_lock() {
    netdata_mutex_lock(&log_mutex);
}
