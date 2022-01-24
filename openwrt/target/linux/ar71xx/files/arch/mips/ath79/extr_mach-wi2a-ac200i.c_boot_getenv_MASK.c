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
 scalar_t__ FUNC0 (int) ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 
 int FUNC3 (char const*,int) ; 

__attribute__((used)) static const char *FUNC4(const char *key)
{
	const char *start = (const char *) FUNC0(0x1f070000);
	const char *end = start + 0x20000;
	const char *addr;

	for (addr = start + 4;
	     *addr && *addr != 0xff && addr < end &&
	     FUNC3(addr, end - addr) < end - addr;
	     addr += FUNC3(addr, end - addr) + 1) {
		const char *val;

		val = FUNC1(addr, '=');
		if (!val)
			continue;

		if (FUNC2(addr, key, val - addr))
			continue;

		return val + 1;
	}
	return NULL;
}