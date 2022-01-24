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
struct hash_type {char* (* func ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hash_type *t, const char *filename, bool add_filename)
{
	const char *str;

	if (!filename || !FUNC4(filename, "-")) {
		str = t->func(stdin);
	} else {
		FILE *f = FUNC1(filename, "r");

		if (!f) {
			FUNC2(stderr, "Failed to open '%s'\n", filename);
			return 1;
		}
		str = t->func(f);
		FUNC0(f);
	}

	if (!str) {
		FUNC2(stderr, "Failed to generate hash\n");
		return 1;
	}

	if (add_filename)
		FUNC3("%s %s\n", str, filename ? filename : "-");
	else
		FUNC3("%s\n", str);
	return 0;
}