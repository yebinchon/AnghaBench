
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiter {void* tag; intptr_t* value; struct waiter* next; } ;


 int lock ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 struct waiter* waiters ;
 int wakeup ;

intptr_t mp_rendezvous(void *tag, intptr_t value)
{
    struct waiter wait = { .tag = tag, .value = &value };
    pthread_mutex_lock(&lock);
    struct waiter **prev = &waiters;
    while (*prev) {
        if ((*prev)->tag == tag) {
            intptr_t tmp = *(*prev)->value;
            *(*prev)->value = value;
            value = tmp;
            (*prev)->value = ((void*)0);
            *prev = (*prev)->next;
            pthread_cond_broadcast(&wakeup);
            goto done;
        }
        prev = &(*prev)->next;
    }
    *prev = &wait;
    while (wait.value)
        pthread_cond_wait(&wakeup, &lock);
done:
    pthread_mutex_unlock(&lock);
    return value;
}
