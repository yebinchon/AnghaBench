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
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char*,char,char const*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(char *cmd, const char *quotes) {
	char *p;
	do {
		p = (char *)FUNC1 (cmd, '~', quotes);
		if (!p) {
			break;
		}
		if (p == cmd || *(p - 1) != '\\') {
			return (char*)p;
		}
		//twiddle unescape
		FUNC0 (p - 1, p, FUNC2(p) + 1);
		cmd = p + 1;
	} while (*cmd);
	return NULL;
}