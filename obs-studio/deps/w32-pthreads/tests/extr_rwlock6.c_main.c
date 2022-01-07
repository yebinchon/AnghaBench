
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int Sleep (int) ;
 int assert (int) ;
 scalar_t__ bankAccount ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,void**) ;
 int rdfunc ;
 int wrfunc ;

int
main()
{
  pthread_t wrt1;
  pthread_t wrt2;
  pthread_t rdt;
  void* wr1Result = (void*)0;
  void* wr2Result = (void*)0;
  void* rdResult = (void*)0;

  bankAccount = 0;

  assert(pthread_create(&wrt1, ((void*)0), wrfunc, ((void*)0)) == 0);
  Sleep(50);
  assert(pthread_create(&rdt, ((void*)0), rdfunc, ((void*)0)) == 0);
  Sleep(50);
  assert(pthread_create(&wrt2, ((void*)0), wrfunc, ((void*)0)) == 0);

  assert(pthread_join(wrt1, &wr1Result) == 0);
  assert(pthread_join(rdt, &rdResult) == 0);
  assert(pthread_join(wrt2, &wr2Result) == 0);

  assert((int)(size_t)wr1Result == 10);
  assert((int)(size_t)rdResult == 10);
  assert((int)(size_t)wr2Result == 20);

  return 0;
}
