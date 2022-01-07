
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ptw32_getprocessors (int*) ;

int
pthread_num_processors_np (void)
{
  int count;

  if (ptw32_getprocessors (&count) != 0)
    {
      count = 1;
    }

  return (count);
}
