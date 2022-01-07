
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* old_mutex_t ;
struct TYPE_3__ {scalar_t__ mutex; int cs; } ;


 int EINVAL ;
 int EnterCriticalSection (int *) ;
 int INFINITE ;
 scalar_t__ PTW32_OBJECT_AUTO_INIT ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (scalar_t__,int ) ;

int
old_mutex_lock(old_mutex_t *mutex)
{
  int result = 0;
  old_mutex_t mx;

  if (mutex == ((void*)0) || *mutex == ((void*)0))
    {
      return EINVAL;
    }

  if (*mutex == (old_mutex_t) PTW32_OBJECT_AUTO_INIT)
    {



      result = EINVAL;
    }

  mx = *mutex;

  if (result == 0)
    {
      if (mx->mutex == 0)
 {
   EnterCriticalSection(&mx->cs);
 }
      else
 {
   result = (WaitForSingleObject(mx->mutex, INFINITE)
      == WAIT_OBJECT_0)
     ? 0
     : EINVAL;
 }
    }

  return(result);
}
