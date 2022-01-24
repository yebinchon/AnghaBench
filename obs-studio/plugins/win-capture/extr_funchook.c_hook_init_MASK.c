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
struct func_hook {uintptr_t func_addr; uintptr_t hook_addr; char const* name; int /*<<< orphan*/  unhook_data; } ;

/* Variables and functions */
 uintptr_t JMP_32_SIZE ; 
 scalar_t__ JMP_64_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct func_hook*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct func_hook *hook, void *func_addr, void *hook_addr,
	       const char *name)
{
	FUNC2(hook, 0, sizeof(*hook));

	hook->func_addr = (uintptr_t)func_addr;
	hook->hook_addr = (uintptr_t)hook_addr;
	hook->name = name;

	FUNC0((void *)(hook->func_addr - JMP_32_SIZE),
			JMP_64_SIZE + JMP_32_SIZE);

	FUNC1(hook->unhook_data, func_addr, JMP_64_SIZE);
}