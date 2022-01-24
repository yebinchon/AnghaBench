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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void * FUNC3(void * arg)
{
  int policy;
  struct sched_param param;

  FUNC0(FUNC1(FUNC2(), &policy, &param) == 0);
  return (void *) (size_t)param.sched_priority;
}