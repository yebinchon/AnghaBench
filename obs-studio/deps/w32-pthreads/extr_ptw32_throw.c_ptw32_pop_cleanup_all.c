
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ptw32_pop_cleanup (int) ;

void
ptw32_pop_cleanup_all (int execute)
{
  while (((void*)0) != ptw32_pop_cleanup (execute))
    {
    }
}
