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
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static char *FUNC3(const char *arg) {
	FUNC1 (arg, NULL);
	char *a = FUNC0 (FUNC2 (arg) + 1);
	if (!a) {
		return NULL;
	}
	char *b = a;
	while (*arg) {
		char ch = *arg;
		switch (ch) {
		case '@':
		case '`':
		case '|':
		case ';':
		case '=':
		case '\n':
			break;
		default:
			*b++ = ch;
			break;
		}
		arg++;
	}
	*b = 0;
	return a;
}