
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int pthread_self () ;

__attribute__((used)) static void get_thread(void *ptr)
{
    *(pthread_t *)ptr = pthread_self();
}
