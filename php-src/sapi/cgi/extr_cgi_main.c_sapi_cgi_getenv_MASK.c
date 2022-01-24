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
 char* FUNC0 (char*,size_t) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(char *name, size_t name_len)
{
#ifndef PHP_WIN32
	return FUNC1(name);
#else
	return cgi_getenv_win32(name, name_len);
#endif
}