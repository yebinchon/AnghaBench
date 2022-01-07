
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cas_id ;
 int cas_id_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

uint64_t get_cas_id(void) {
    pthread_mutex_lock(&cas_id_lock);
    uint64_t next_id = ++cas_id;
    pthread_mutex_unlock(&cas_id_lock);
    return next_id;
}
