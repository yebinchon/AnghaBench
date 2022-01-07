
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;
typedef int pthread_cond_t ;


 int INFINITE ;
 int cond_wait (int *,int *,int ) ;

int pthread_cond_wait(pthread_cond_t *restrict cond,
                      pthread_mutex_t *restrict mutex)
{
    return cond_wait(cond, mutex, INFINITE);
}
