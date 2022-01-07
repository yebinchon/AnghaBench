
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* accesscount ;
 int assert (int) ;
 int key ;
 scalar_t__ pthread_setspecific (int ,void*) ;
 int* thread_destroyed ;

__attribute__((used)) static void
destroy_key(void * arg)
{
  int * j = (int *) arg;

  (*j)++;


  if (*j == 2)
    assert(pthread_setspecific(key, arg) == 0);
  else
    assert(*j == 3);

  thread_destroyed[j - accesscount] = 1;
}
