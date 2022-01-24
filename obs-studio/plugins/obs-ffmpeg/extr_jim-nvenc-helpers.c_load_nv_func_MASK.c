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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  nvenc_lib ; 
 void* FUNC1 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void *FUNC2(const char *func)
{
	void *func_ptr = FUNC1(nvenc_lib, func);
	if (!func_ptr) {
		FUNC0("Could not load function: %s", func);
	}
	return func_ptr;
}