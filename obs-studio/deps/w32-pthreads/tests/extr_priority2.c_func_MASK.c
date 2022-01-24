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
struct sched_param {scalar_t__ sched_priority; } ;

/* Variables and functions */
 int PTHREAD_BARRIER_SERIAL_THREAD ; 
 int SCHED_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  endBarrier ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  startBarrier ; 

void * FUNC4(void * arg)
{
  int policy;
  int result;
  struct sched_param param;

  result = FUNC1(&startBarrier);
  FUNC0(result == 0 || result == PTHREAD_BARRIER_SERIAL_THREAD);
  FUNC0(FUNC2(FUNC3(), &policy, &param) == 0);
  FUNC0(policy == SCHED_OTHER);
  result = FUNC1(&endBarrier);
  FUNC0(result == 0 || result == PTHREAD_BARRIER_SERIAL_THREAD);
  return (void *) (size_t)param.sched_priority;
}