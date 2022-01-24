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
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 

__attribute__((used)) static json_t *FUNC4(void)
{
	char *file;
	json_t *root = NULL;

	file = FUNC1("services.json");
	if (file) {
		root = FUNC3(file);
		FUNC0(file);
	}

	if (!root) {
		file = FUNC2("services.json");
		if (file) {
			root = FUNC3(file);
			FUNC0(file);
		}
	}

	return root;
}