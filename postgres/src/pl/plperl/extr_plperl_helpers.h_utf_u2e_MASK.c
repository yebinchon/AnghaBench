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
 int /*<<< orphan*/  PG_UTF8 ; 
 char* FUNC0 (char*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static inline char *
FUNC2(char *utf8_str, size_t len)
{
	char	   *ret;

	ret = FUNC0(utf8_str, len, PG_UTF8);

	/* ensure we have a copy even if no conversion happened */
	if (ret == utf8_str)
		ret = FUNC1(ret);

	return ret;
}