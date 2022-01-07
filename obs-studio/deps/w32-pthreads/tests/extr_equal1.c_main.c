
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int Sleep (int) ;
 int assert (int) ;
 int func ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_equal (int ,int ) ;

int
main()
{
  pthread_t t1, t2;

  assert(pthread_create(&t1, ((void*)0), func, (void *) 1) == 0);

  assert(pthread_create(&t2, ((void*)0), func, (void *) 2) == 0);

  assert(pthread_equal(t1, t2) == 0);

  assert(pthread_equal(t1,t1) != 0);



   Sleep(4000);


  return 0;
}
