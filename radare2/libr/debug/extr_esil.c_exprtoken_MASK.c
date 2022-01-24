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
typedef  int /*<<< orphan*/  RDebug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(RDebug *dbg, char *s, const char *sep, char **o) {
	char *p = FUNC1 (s, sep);
	if (p) {
		*p = 0;
		p += FUNC0 (sep);
		*o = p;
		return 1;
	}
	*o = NULL;
	return 0;
}