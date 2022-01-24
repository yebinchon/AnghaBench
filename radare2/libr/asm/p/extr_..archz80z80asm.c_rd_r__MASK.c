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
 int indexed ; 
 int /*<<< orphan*/  indexjmp ; 
 int FUNC0 (char const**,char const**,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(const char **p) {
	int i;
	const char *list[] = {
		"b", "c", "d", "e", "h", "l", "( hl )", "a", "( ix +)", "( iy +)", NULL
	};
	i = FUNC0 (p, list, 1, &indexjmp);
	if (i < 9) {
		return i;
	}
	indexed = 0xDD + 0x20 * (i - 9);
	return 7;
}