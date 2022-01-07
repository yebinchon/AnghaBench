
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int pthread_exit (void*) ;

void *
func(void * arg)
{
 pthread_exit(arg);


 assert(0);

 return ((void*)0);
}
