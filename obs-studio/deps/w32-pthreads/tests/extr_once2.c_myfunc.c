
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cs; int i; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int Sleep (int) ;
 TYPE_1__ numOnce ;

void
myfunc(void)
{
  EnterCriticalSection(&numOnce.cs);
  numOnce.i++;
  LeaveCriticalSection(&numOnce.cs);

  Sleep(100);
}
