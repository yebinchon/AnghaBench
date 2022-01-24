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
 char* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static inline char *
FUNC3(const char *str)
{
	char	   *ret;

	ret = FUNC0(str, FUNC2(str), PG_UTF8);

	/* ensure we have a copy even if no conversion happened */
	if (ret == str)
		ret = FUNC1(ret);

	return ret;
}