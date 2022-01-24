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
typedef  int /*<<< orphan*/  ut16 ;
typedef  char Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  R2_SDB_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC8(char *module, ut16 ordinal) {
	char *path = FUNC3 (FUNC0 ("%s", R2_SDB_FORMAT, "dll", "%s.sdb"), FUNC4 (NULL), module);
	char *ord = FUNC3 ("%d", ordinal);
	char *name;
	if (FUNC2 (path)) {
		Sdb *sdb = FUNC7 (NULL, path, 0);
		name = FUNC6 (sdb, ord, NULL);
		if (!name) {
			name = ord;
		} else {
			FUNC1 (ord);
		}
		FUNC5 (sdb);
		FUNC1 (sdb);
	} else {
		name = ord;
	}
	return name;
}