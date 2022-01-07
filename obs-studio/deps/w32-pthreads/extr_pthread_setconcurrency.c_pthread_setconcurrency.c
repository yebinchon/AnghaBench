
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ptw32_concurrency ;

int
pthread_setconcurrency (int level)
{
  if (level < 0)
    {
      return EINVAL;
    }
  else
    {
      ptw32_concurrency = level;
      return 0;
    }
}
