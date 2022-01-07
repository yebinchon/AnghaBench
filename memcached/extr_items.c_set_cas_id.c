
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cas_id ;
 int cas_id_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void set_cas_id(uint64_t new_cas) {
    pthread_mutex_lock(&cas_id_lock);
    cas_id = new_cas;
    pthread_mutex_unlock(&cas_id_lock);
}
