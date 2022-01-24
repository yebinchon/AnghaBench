#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* old_mutex_t ;
struct TYPE_6__ {scalar_t__ mutex; int /*<<< orphan*/  cs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ PTW32_OBJECT_AUTO_INIT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 scalar_t__ ptw32_h_kernel32 ; 
 int /*<<< orphan*/ * ptw32_try_enter_critical_section ; 

int
FUNC6(old_mutex_t *mutex)
{
  int result = 0;
  old_mutex_t mx;

  if (mutex == NULL
      || *mutex == NULL)
    {
      return EINVAL;
    }

  if (*mutex != (old_mutex_t) PTW32_OBJECT_AUTO_INIT)
    {
      mx = *mutex;

      if ((result = FUNC4(&mx)) == 0)
        {
          *mutex = NULL;

          (void) FUNC5(&mx);

          if (mx->mutex == 0)
            {
              FUNC1(&mx->cs);
            }
          else
            {
              result = (FUNC0 (mx->mutex) ? 0 : EINVAL);
            }

          if (result == 0)
            {
              mx->mutex = 0;
              FUNC3(mx);
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

  if (ptw32_try_enter_critical_section != NULL)
    {
      (void) FUNC2(ptw32_h_kernel32);
      ptw32_h_kernel32 = 0;
    }

  return(result);
}