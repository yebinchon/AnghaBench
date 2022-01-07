
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i; int cs; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int Sleep (int) ;
 int assert (int) ;
 TYPE_1__ numOnce ;
 int pthread_testcancel () ;

void
myfunc(void)
{
  EnterCriticalSection(&numOnce.cs);
  numOnce.i++;
  assert(numOnce.i > 0);
  LeaveCriticalSection(&numOnce.cs);

  Sleep(10);

  pthread_testcancel();
}
