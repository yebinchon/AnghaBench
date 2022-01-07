
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* old_mutex_t ;
struct TYPE_6__ {scalar_t__ mutex; int cs; } ;


 scalar_t__ CloseHandle (scalar_t__) ;
 int DeleteCriticalSection (int *) ;
 int EINVAL ;
 int FreeLibrary (scalar_t__) ;
 scalar_t__ PTW32_OBJECT_AUTO_INIT ;
 int free (TYPE_1__*) ;
 int old_mutex_trylock (TYPE_1__**) ;
 int old_mutex_unlock (TYPE_1__**) ;
 scalar_t__ ptw32_h_kernel32 ;
 int * ptw32_try_enter_critical_section ;

int
old_mutex_destroy(old_mutex_t *mutex)
{
  int result = 0;
  old_mutex_t mx;

  if (mutex == ((void*)0)
      || *mutex == ((void*)0))
    {
      return EINVAL;
    }

  if (*mutex != (old_mutex_t) PTW32_OBJECT_AUTO_INIT)
    {
      mx = *mutex;

      if ((result = old_mutex_trylock(&mx)) == 0)
        {
          *mutex = ((void*)0);

          (void) old_mutex_unlock(&mx);

          if (mx->mutex == 0)
            {
              DeleteCriticalSection(&mx->cs);
            }
          else
            {
              result = (CloseHandle (mx->mutex) ? 0 : EINVAL);
            }

          if (result == 0)
            {
              mx->mutex = 0;
              free(mx);
            }
          else
            {
              *mutex = mx;
            }
        }
    }
  else
    {
      result = EINVAL;
    }

  if (ptw32_try_enter_critical_section != ((void*)0))
    {
      (void) FreeLibrary(ptw32_h_kernel32);
      ptw32_h_kernel32 = 0;
    }

  return(result);
}
