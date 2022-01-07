
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_exit (int *) ;

__attribute__((used)) static void *null_fn(void *arg)
{
 pthread_exit(((void*)0));
}
