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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int SCHED_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void *
FUNC3(void * arg)
{
  int policy;
  struct sched_param param;
  pthread_t threadID = FUNC2();

  FUNC0(FUNC1(threadID, &policy, &param) == 0);
  FUNC0(policy == SCHED_OTHER);
  return (void *) (size_t)(param.sched_priority);
}