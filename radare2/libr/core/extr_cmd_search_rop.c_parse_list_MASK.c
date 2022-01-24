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
typedef  int /*<<< orphan*/  RList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  (*) (char*)) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static RList* FUNC6 (const char *str) {
	RList *list;
	char *line, *data, *p, *str_n;

	if (!str) {
		return NULL;
	}

	str_n = FUNC4 (str);
	list = FUNC2 (free);
	if (!list) {
		FUNC0 (str_n);
		return NULL;
	}
	line = FUNC5 (str_n, "\n");
	data = FUNC3 (line, '=');
	// TODO: use r_str_split()
	p = FUNC5 (data + 1, ",");

	while (p) {
		FUNC1 (list, (void*)FUNC4 (p));
		p = FUNC5 (NULL, ",");
	}

	FUNC0 (str_n);
	return list;
}