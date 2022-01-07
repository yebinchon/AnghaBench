
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pthread_mutexattr_t ;
struct TYPE_4__ {int srw; int cs; } ;
struct TYPE_5__ {int use_cs; TYPE_1__ lock; } ;
typedef TYPE_2__ pthread_mutex_t ;


 int InitializeCriticalSection (int *) ;
 int InitializeSRWLock (int *) ;
 int const PTHREAD_MUTEX_RECURSIVE ;

int pthread_mutex_init(pthread_mutex_t *restrict mutex,
                       const pthread_mutexattr_t *restrict attr)
{
    mutex->use_cs = attr && (*attr & PTHREAD_MUTEX_RECURSIVE);
    if (mutex->use_cs) {
        InitializeCriticalSection(&mutex->lock.cs);
    } else {
        InitializeSRWLock(&mutex->lock.srw);
    }
    return 0;
}
