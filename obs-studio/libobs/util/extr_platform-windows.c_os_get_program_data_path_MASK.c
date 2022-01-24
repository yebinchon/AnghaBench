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
 int /*<<< orphan*/  CSIDL_COMMON_APPDATA ; 
 int FUNC0 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

int FUNC1(char *dst, size_t size, const char *name)
{
	return FUNC0(dst, size, name, CSIDL_COMMON_APPDATA);
}