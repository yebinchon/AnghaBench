
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* accesscount ;
 int assert (int) ;
 int* thread_destroyed ;

__attribute__((used)) static void
destroy_key(void * arg)
{
  int * j = (int *) arg;

  (*j)++;

  assert(*j == 2);

  thread_destroyed[j - accesscount] = 1;
}
