
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef void pthread_mutex_t ;


 size_t hashmask (int ) ;
 int item_lock_hashpower ;
 int * item_locks ;
 scalar_t__ pthread_mutex_trylock (void*) ;

void *item_trylock(uint32_t hv) {
    pthread_mutex_t *lock = &item_locks[hv & hashmask(item_lock_hashpower)];
    if (pthread_mutex_trylock(lock) == 0) {
        return lock;
    }
    return ((void*)0);
}
