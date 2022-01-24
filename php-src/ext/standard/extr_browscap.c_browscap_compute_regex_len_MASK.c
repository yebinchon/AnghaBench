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
typedef  int /*<<< orphan*/  zend_string ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC2(zend_string *pattern) {
	size_t i, len = FUNC0(pattern);
	for (i = 0; i < FUNC0(pattern); i++) {
		switch (FUNC1(pattern)[i]) {
			case '*':
			case '.':
			case '\\':
			case '(':
			case ')':
			case '~':
			case '+':
				len++;
				break;
		}
	}

	return len + sizeof("~^$~")-1;
}