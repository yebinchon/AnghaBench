
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_mutex_unlock (int *) ;
 int slabs_lock ;

void slabs_munlock(void) {
    pthread_mutex_unlock(&slabs_lock);
}
