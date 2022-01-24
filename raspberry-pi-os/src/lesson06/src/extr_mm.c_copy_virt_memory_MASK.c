#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int user_pages_count; TYPE_2__* user_pages; } ;
struct task_struct {TYPE_1__ mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  virt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned long FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct task_struct *dst) {
	struct task_struct* src = current;
	for (int i = 0; i < src->mm.user_pages_count; i++) {
		unsigned long kernel_va = FUNC0(dst, src->mm.user_pages[i].virt_addr);
		if( kernel_va == 0) {
			return -1;
		}
		FUNC1(kernel_va, src->mm.user_pages[i].virt_addr, PAGE_SIZE);
	}
	return 0;
}