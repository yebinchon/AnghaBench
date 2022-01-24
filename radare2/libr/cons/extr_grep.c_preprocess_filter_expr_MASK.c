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
 char* FUNC0 (char*,char const*) ; 
 char* FUNC1 (char*,char const*) ; 
 char* FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static char *FUNC5(char *cmd, const char *quotes) {
	char *p1, *p2, *ns = NULL;
	const char *strsep = "&";
	int len;
	int i;

	p1 = FUNC0 (cmd, quotes);
	if (!p1) {
		return NULL;
	}

	len = FUNC4 (p1);
	if (len > 4 && FUNC3 (p1, "~?") && p1[len - 3] != '\\') {
		p1[len - 2] = '\0';
		ns = FUNC1 (ns, "?");
	}

	*p1 = '\0'; // remove grep part from cmd

	i = 0;
	// parse words between '~'
	while ((p2 = FUNC0 (p1 + 1, quotes))) {
		ns = FUNC1 (ns, strsep);
		ns = FUNC2 (ns, p1 + 1, (int)(p2 - p1 - 1));
		p1 = p2;
		strsep = ",";
		i++;
	}

	if (i > 0) {
		ns = FUNC1 (ns, ",");
	}

	ns = FUNC1 (ns, p1 + 1);

	return ns;
}