
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * lockAwaited ;

bool
IsWaitingForLock(void)
{
 if (lockAwaited == ((void*)0))
  return 0;

 return 1;
}
