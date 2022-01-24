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
 scalar_t__ FUNC0 (unsigned char) ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3(const char *msg)
{
	char	   *res = FUNC1(msg);
	int			len = FUNC2(res);

	while (len > 0 && FUNC0((unsigned char) res[len - 1]))
		res[--len] = '\0';
	return res;
}