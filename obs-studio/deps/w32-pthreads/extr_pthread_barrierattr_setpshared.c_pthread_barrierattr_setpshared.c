
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_barrierattr_t ;
struct TYPE_3__ {int pshared; } ;


 int EINVAL ;
 int ENOSYS ;
 int PTHREAD_PROCESS_PRIVATE ;
 int PTHREAD_PROCESS_SHARED ;

int
pthread_barrierattr_setpshared (pthread_barrierattr_t * attr, int pshared)
{
  int result;

  if ((attr != ((void*)0) && *attr != ((void*)0)) &&
      ((pshared == PTHREAD_PROCESS_SHARED) ||
       (pshared == PTHREAD_PROCESS_PRIVATE)))
    {
      if (pshared == PTHREAD_PROCESS_SHARED)
 {



   result = ENOSYS;
   pshared = PTHREAD_PROCESS_PRIVATE;







 }
      else
 {
   result = 0;
 }

      (*attr)->pshared = pshared;
    }
  else
    {
      result = EINVAL;
    }

  return (result);

}
