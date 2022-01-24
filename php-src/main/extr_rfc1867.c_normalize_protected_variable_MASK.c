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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char*,char) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(char *varname) /* {{{ */
{
	char *s = varname, *index = NULL, *indexend = NULL, *p;

	/* overjump leading space */
	while (*s == ' ') {
		s++;
	}

	/* and remove it */
	if (s != varname) {
		FUNC0(varname, s, FUNC2(s)+1);
	}

	for (p = varname; *p && *p != '['; p++) {
		switch(*p) {
			case ' ':
			case '.':
				*p = '_';
				break;
		}
	}

	/* find index */
	index = FUNC1(varname, '[');
	if (index) {
		index++;
		s = index;
	} else {
		return;
	}

	/* done? */
	while (index) {
		while (*index == ' ' || *index == '\r' || *index == '\n' || *index=='\t') {
			index++;
		}
		indexend = FUNC1(index, ']');
		indexend = indexend ? indexend + 1 : index + FUNC2(index);

		if (s != index) {
			FUNC0(s, index, FUNC2(index)+1);
			s += indexend-index;
		} else {
			s = indexend;
		}

		if (*s == '[') {
			s++;
			index = s;
		} else {
			index = NULL;
		}
	}
	*s = '\0';
}