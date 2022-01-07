
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int srw; int cs; } ;
struct TYPE_5__ {TYPE_1__ lock; scalar_t__ use_cs; } ;
typedef TYPE_2__ pthread_mutex_t ;


 int LeaveCriticalSection (int *) ;
 int ReleaseSRWLockExclusive (int *) ;

int pthread_mutex_unlock(pthread_mutex_t *mutex)
{
    if (mutex->use_cs) {
        LeaveCriticalSection(&mutex->lock.cs);
    } else {
        ReleaseSRWLockExclusive(&mutex->lock.srw);
    }
    return 0;
}
