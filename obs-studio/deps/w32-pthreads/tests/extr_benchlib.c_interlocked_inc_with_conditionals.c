
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InterlockedIncrement (long*) ;

void
interlocked_inc_with_conditionals(int * a)
{
  if (a != ((void*)0))
    if (InterlockedIncrement((long *) a) == -1)
      {
        *a = 0;
      }
}
