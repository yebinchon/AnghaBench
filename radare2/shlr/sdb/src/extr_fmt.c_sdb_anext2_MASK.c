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
 int /*<<< orphan*/  SDB_RS ; 
 char* FUNC0 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC1(const char *str, const char **next) {
	char *nxt, *p = FUNC0 (str, SDB_RS);
	if (p) {
		nxt = p + 1;
	} else {
		nxt = NULL;
	}
	if (next) {
		*next = nxt;
	}
	return str;
}