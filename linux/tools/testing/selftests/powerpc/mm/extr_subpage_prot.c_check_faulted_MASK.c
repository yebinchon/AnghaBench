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

/* Variables and functions */
 void* dar ; 
 int /*<<< orphan*/  errors ; 
 int faulted ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,void*,...) ; 

__attribute__((used)) static inline void FUNC1(void *addr, long page, long subpage, int write)
{
	int want_fault = (subpage == ((page + 3) % 16));

	if (write)
		want_fault |= (subpage == ((page + 1) % 16));

	if (faulted != want_fault) {
		FUNC0("Failed at %p (p=%ld,sp=%ld,w=%d), want=%s, got=%s !\n",
		       addr, page, subpage, write,
		       want_fault ? "fault" : "pass",
		       faulted ? "fault" : "pass");
		++errors;
	}

	if (faulted) {
		if (dar != addr) {
			FUNC0("Fault expected at %p and happened at %p !\n",
			       addr, dar);
		}
		faulted = 0;
		asm volatile("sync" : : : "memory");
	}
}