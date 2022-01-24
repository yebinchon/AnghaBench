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
struct task_struct {scalar_t__ state; int counter; int priority; } ;

/* Variables and functions */
 int NR_TASKS ; 
 scalar_t__ TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 struct task_struct** task ; 

void FUNC3(void) {
  FUNC0();
  int next, c;
  struct task_struct *p;
  while (1) {
    c = -1;
    next = 0;
    for (int i = 0; i < NR_TASKS; i++) {
      p = task[i];
      if (p && p->state == TASK_RUNNING && p->counter > c) {
        c = p->counter;
        next = i;
      }
    }
    if (c) {
      break;
    }
    for (int i = 0; i < NR_TASKS; i++) {
      p = task[i];
      if (p) {
        p->counter = (p->counter >> 1) + p->priority;
      }
    }
  }
  FUNC2(task[next]);
  FUNC1();
}