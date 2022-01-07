
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int Sleep (int) ;
 int assert (int) ;
 int entry ;
 int me ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_equal (int ,int ) ;

int
main()
{
  pthread_t t;

  assert(pthread_create(&t, ((void*)0), entry, ((void*)0)) == 0);

  Sleep(100);

  assert(pthread_equal(t, me) != 0);


  return 0;
}
