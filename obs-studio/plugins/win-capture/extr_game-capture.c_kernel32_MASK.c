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
typedef  int /*<<< orphan*/ * HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 

__attribute__((used)) static inline HMODULE FUNC1(void)
{
	static HMODULE kernel32_handle = NULL;
	if (!kernel32_handle)
		kernel32_handle = FUNC0(L"kernel32");
	return kernel32_handle;
}