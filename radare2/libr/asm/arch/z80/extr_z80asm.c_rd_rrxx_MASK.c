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
 int FUNC0 (char const**,char const**,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(const char **p) {
	const char *listx[] = {
		"bc", "de", "ix", "sp", NULL
	};
	const char *listy[] = {
		"bc", "de", "iy", "sp", NULL
	};
	const char *list[] = {
		"bc", "de", "hl", "sp", NULL
	};
	if (indexed == 0xdd) {
		return FUNC0 (p, listx, 1, NULL);
	}
	if (indexed == 0xfd) {
		return FUNC0 (p, listy, 1, NULL);
	}
	return FUNC0 (p, list, 1, NULL);
}