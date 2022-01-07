
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dr_helper {int thread_lock; int dr_in_flight; } ;


 int assert (int) ;
 scalar_t__ atomic_load (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void dr_helper_destroy(void *ptr)
{
    struct dr_helper *dr = ptr;



    assert(atomic_load(&dr->dr_in_flight) == 0);

    pthread_mutex_destroy(&dr->thread_lock);
}
