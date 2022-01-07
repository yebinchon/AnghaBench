
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int * cv ;
 scalar_t__ pthread_cond_destroy (int **) ;
 scalar_t__ pthread_cond_init (int **,int *) ;

int
main()
{
  assert(cv == ((void*)0));

  assert(pthread_cond_init(&cv, ((void*)0)) == 0);

  assert(cv != ((void*)0));

  assert(pthread_cond_destroy(&cv) == 0);

  assert(cv == ((void*)0));

  return 0;
}
