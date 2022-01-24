#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timespec {int member_0; long member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  mx ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct timespec*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pthread_mutex_unlock ; 

void *
FUNC5(void * arg)
{
  struct timespec interval = {5, 500000000L};

  FUNC0(FUNC4(&mx) == 0);

#ifdef _MSC_VER
#pragma inline_depth(0)
#endif
  FUNC2(pthread_mutex_unlock, &mx);
  FUNC0(FUNC3(&interval) == 0);
  FUNC1(1);
#ifdef _MSC_VER
#pragma inline_depth()
#endif

  return (void *)(size_t)1;
}