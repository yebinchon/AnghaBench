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
 int FALSE ; 
 int TRUE ; 
 char* FUNC0 (char const*) ; 

__attribute__((used)) static bool FUNC1(const char *name)
{
	char *value = FUNC0(name);

	if (value && value[0] == '1' && !value[1])
		return TRUE;

	return FALSE;
}