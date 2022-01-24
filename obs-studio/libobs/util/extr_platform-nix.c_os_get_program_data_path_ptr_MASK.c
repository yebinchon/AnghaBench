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
 char* FUNC0 (size_t) ; 
 size_t FUNC1 (char*,size_t,char*,char const*) ; 

char *FUNC2(const char *name)
{
	size_t len =
		FUNC1(NULL, 0, "/usr/local/share/%s", !!name ? name : "");
	char *str = FUNC0(len + 1);
	FUNC1(str, len + 1, "/usr/local/share/%s", !!name ? name : "");
	str[len] = 0;
	return str;
}