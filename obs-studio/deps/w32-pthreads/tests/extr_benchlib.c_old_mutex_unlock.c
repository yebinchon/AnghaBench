
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* old_mutex_t ;
struct TYPE_3__ {scalar_t__ mutex; int cs; } ;


 int EINVAL ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ PTW32_OBJECT_AUTO_INIT ;
 scalar_t__ ReleaseMutex (scalar_t__) ;

int
old_mutex_unlock(old_mutex_t *mutex)
{
  int result = 0;
  old_mutex_t mx;

  if (mutex == ((void*)0) || *mutex == ((void*)0))
    {
      return EINVAL;
    }

  mx = *mutex;

  if (mx != (old_mutex_t) PTW32_OBJECT_AUTO_INIT)
    {
      if (mx->mutex == 0)
 {
   LeaveCriticalSection(&mx->cs);
 }
      else
 {
   result = (ReleaseMutex (mx->mutex) ? 0 : EINVAL);
 }
    }
  else
    {
      result = EINVAL;
    }

  return(result);
}
