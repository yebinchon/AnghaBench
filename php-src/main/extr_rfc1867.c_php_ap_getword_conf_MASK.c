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
typedef  int /*<<< orphan*/  zend_encoding ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*,int,char) ; 

__attribute__((used)) static char *FUNC4(const zend_encoding *encoding, char *str)
{
	while (*str && FUNC1(*str)) {
		++str;
	}

	if (!*str) {
		return FUNC0("");
	}

	if (*str == '"' || *str == '\'') {
		char quote = *str;

		str++;
		return FUNC3(str, (int)FUNC2(str), quote);
	} else {
		char *strend = str;

		while (*strend && !FUNC1(*strend)) {
			++strend;
		}
		return FUNC3(str, strend - str, 0);
	}
}