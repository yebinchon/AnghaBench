
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int mutex_unlock (int *) ;

void item_trylock_unlock(void *lock) {
    mutex_unlock((pthread_mutex_t *) lock);
}
