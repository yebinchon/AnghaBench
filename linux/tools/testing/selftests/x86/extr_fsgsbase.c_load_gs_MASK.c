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
struct user_desc {int entry_number; int base_addr; int limit; int seg_32bit; int limit_in_pages; int /*<<< orphan*/  useable; int /*<<< orphan*/  seg_not_present; int /*<<< orphan*/  read_exec_only; int /*<<< orphan*/  contents; } ;
typedef  int /*<<< orphan*/  desc ;

/* Variables and functions */
 int /*<<< orphan*/  ARCH_SET_GS ; 
 int MAP_32BIT ; 
 int MAP_ANONYMOUS ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SYS_arch_prctl ; 
 int /*<<< orphan*/  SYS_modify_ldt ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct user_desc*,struct user_desc*,int) ; 
 struct user_desc* FUNC2 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct user_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int set_thread_area_entry_number ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,struct user_desc*,...) ; 

__attribute__((used)) static unsigned short FUNC6(void)
{
	/*
	 * Sets GS != 0 and GSBASE != 0 but arranges for the kernel to think
	 * that GSBASE == 0 (i.e. thread.gsbase == 0).
	 */

	/* Step 1: tell the kernel that we have GSBASE == 0. */
	if (FUNC5(SYS_arch_prctl, ARCH_SET_GS, 0) != 0)
		FUNC0(1, "ARCH_SET_GS");

	/* Step 2: change GSBASE without telling the kernel. */
	struct user_desc desc = {
		.entry_number    = 0,
		.base_addr       = 0xBAADF00D,
		.limit           = 0xfffff,
		.seg_32bit       = 1,
		.contents        = 0, /* Data, grow-up */
		.read_exec_only  = 0,
		.limit_in_pages  = 1,
		.seg_not_present = 0,
		.useable         = 0
	};
	if (FUNC5(SYS_modify_ldt, 1, &desc, sizeof(desc)) == 0) {
		FUNC4("\tusing LDT slot 0\n");
		asm volatile ("mov %0, %%gs" : : "rm" ((unsigned short)0x7));
		return 0x7;
	} else {
		/* No modify_ldt for us (configured out, perhaps) */

		struct user_desc *low_desc = FUNC2(
			NULL, sizeof(desc),
			PROT_READ | PROT_WRITE,
			MAP_PRIVATE | MAP_ANONYMOUS | MAP_32BIT, -1, 0);
		FUNC1(low_desc, &desc, sizeof(desc));

		low_desc->entry_number = set_thread_area_entry_number;

		/* 32-bit set_thread_area */
		long ret;
		asm volatile ("int $0x80"
			      : "=a" (ret) : "a" (243), "b" (low_desc)
			      : "r8", "r9", "r10", "r11");
		FUNC1(&desc, low_desc, sizeof(desc));
		FUNC3(low_desc, sizeof(desc));

		if (ret != 0) {
			FUNC4("[NOTE]\tcould not create a segment -- test won't do anything\n");
			return 0;
		}
		FUNC4("\tusing GDT slot %d\n", desc.entry_number);
		set_thread_area_entry_number = desc.entry_number;

		unsigned short gs = (unsigned short)((desc.entry_number << 3) | 0x3);
		asm volatile ("mov %0, %%gs" : : "rm" (gs));
		return gs;
	}
}