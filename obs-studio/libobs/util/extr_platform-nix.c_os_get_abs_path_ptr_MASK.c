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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

char *FUNC3(const char *path)
{
	char *ptr = FUNC1(512);

	if (!FUNC2(path, ptr, 512)) {
		FUNC0(ptr);
		ptr = NULL;
	}

	return ptr;
}