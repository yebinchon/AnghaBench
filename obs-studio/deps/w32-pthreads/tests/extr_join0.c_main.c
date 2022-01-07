
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int assert (int) ;
 int func ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,void**) ;

int
main(int argc, char * argv[])
{
  pthread_t id;
  void* result = (void*)0;


  assert(pthread_create(&id, ((void*)0), func, (void *) 123) == 0);

  assert(pthread_join(id, &result) == 0);

  assert((int)(size_t)result == 123);


  return 0;
}
