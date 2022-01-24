#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sched_param {int sched_priority; } ;
typedef  TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {int /*<<< orphan*/  param; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SCHED_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sched_param const*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__**) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4 (pthread_attr_t * attr,
			    const struct sched_param *param)
{
  int priority;

  if (FUNC1 (attr) != 0 || param == NULL)
    {
      return EINVAL;
    }

  priority = param->sched_priority;

  /* Validate priority level. */
  if (priority < FUNC3 (SCHED_OTHER) ||
      priority > FUNC2 (SCHED_OTHER))
    {
      return EINVAL;
    }

  FUNC0 (&(*attr)->param, param, sizeof (*param));
  return 0;
}