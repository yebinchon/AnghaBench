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
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 char** page_flag_names ; 
 scalar_t__ FUNC1 (char*,int,char*,char*) ; 

__attribute__((used)) static char *FUNC2(uint64_t flags)
{
	static char buf[1024];
	size_t i, n;

	for (i = 0, n = 0; i < FUNC0(page_flag_names); i++) {
		if (!page_flag_names[i])
			continue;
		if ((flags >> i) & 1)
			n += FUNC1(buf + n, sizeof(buf) - n, "%s,",
					page_flag_names[i] + 2);
	}
	if (n)
		n--;
	buf[n] = '\0';

	return buf;
}