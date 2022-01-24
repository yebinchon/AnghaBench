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
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RList* FUNC6(const char *str) {
	RList *list;
	char *p, *data;
	if (!str) {
		return NULL;
	}

	data = FUNC3 (str);
	list = FUNC2 (free);
	p = FUNC4 (data, ",");
	while (p) {
		if (FUNC5 (p, NULL, 0)) {
			FUNC1 (list, (void*)FUNC3 (p));
		}
		p = FUNC4 (NULL, ",");
	}
	FUNC0 (data);
	return list;
}