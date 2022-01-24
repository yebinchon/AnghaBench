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
struct task_struct {int dummy; } ;

/* Variables and functions */
 unsigned long VA_START ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,unsigned long,unsigned long) ; 

unsigned long FUNC2(struct task_struct *task, unsigned long va) {
	unsigned long page = FUNC0();
	if (page == 0) {
		return 0;
	}
	FUNC1(task, va, page);
	return page + VA_START;
}