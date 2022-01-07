
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int Sleep (int) ;
 int assert (int) ;
 int func ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int washere ;

int
main()
{
  pthread_t t;

  assert(pthread_create(&t, ((void*)0), func, ((void*)0)) == 0);



  Sleep(2000);

  assert(washere == 1);

  return 0;
}
