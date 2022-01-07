
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int mutex; } ;


 int netdata_mutex_lock (int *) ;

__attribute__((used)) static inline void config_section_wrlock(struct section *co) {
    netdata_mutex_lock(&co->mutex);
}
