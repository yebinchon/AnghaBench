
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_attr_t ;


 int EINVAL ;
 int ENOTSUP ;
 int SCHED_OTHER ;
 scalar_t__ ptw32_is_attr (int *) ;

int
pthread_attr_setschedpolicy (pthread_attr_t * attr, int policy)
{
  if (ptw32_is_attr (attr) != 0)
    {
      return EINVAL;
    }

  if (policy != SCHED_OTHER)
    {
      return ENOTSUP;
    }

  return 0;
}
