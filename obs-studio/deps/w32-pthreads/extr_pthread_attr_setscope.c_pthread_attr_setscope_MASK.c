#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {int contentionscope; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int ENOTSUP ; 
#define  PTHREAD_SCOPE_PROCESS 129 
#define  PTHREAD_SCOPE_SYSTEM 128 

int
FUNC0 (pthread_attr_t * attr, int contentionscope)
{
#if defined(_POSIX_THREAD_PRIORITY_SCHEDULING)
  switch (contentionscope)
    {
    case PTHREAD_SCOPE_SYSTEM:
      (*attr)->contentionscope = contentionscope;
      return 0;
    case PTHREAD_SCOPE_PROCESS:
      return ENOTSUP;
    default:
      return EINVAL;
    }
#else
  return ENOSYS;
#endif
}