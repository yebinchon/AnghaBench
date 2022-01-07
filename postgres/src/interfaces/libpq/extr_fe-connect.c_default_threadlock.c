
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_mutex_t ;


 int InterlockedExchange (long*,int) ;
 int PGTHREAD_ERROR (char*) ;
 int * PTHREAD_MUTEX_INITIALIZER ;
 scalar_t__ pthread_mutex_init (int **,int *) ;
 scalar_t__ pthread_mutex_lock (int **) ;
 scalar_t__ pthread_mutex_unlock (int **) ;

__attribute__((used)) static void
default_threadlock(int acquire)
{
}
