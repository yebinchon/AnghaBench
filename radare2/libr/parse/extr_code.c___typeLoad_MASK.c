#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sdb_types; } ;
typedef  TYPE_1__ RAnal ;

/* Variables and functions */
 int VT_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char**) ; 
 char* FUNC2 (char*,char const*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 

__attribute__((used)) static int FUNC8(void *p, const char *k, const char *v) {
	if (!p) {
		return -1;
	}
	int btype = 0;
	RAnal *anal = (RAnal*)p;
	//r_cons_printf ("tk %s=%s\n", k, v);
	// TODO: Add unions support
	if (!FUNC6 (v, "struct", 6) && FUNC6 (k, "struct.", 7)) {
		// structure
		btype = VT_STRUCT;
		const char *typename = k;
		int typesize = 0;
		// TODO: Add typesize here
		char* query = FUNC2 ("struct.%s", k);
		char *members = FUNC3 (anal->sdb_types, query, 0);
		char *next, *ptr = members;
		if (members) {
			do {
				char *name = FUNC1 (ptr, &next);
				if (!name) {
					break;
				}
				query = FUNC2 ("struct.%s.%s", k, name);
				char *subtype = FUNC3 (anal->sdb_types, query, 0);
				if (!subtype) {
					break;
				}
				char *tmp = FUNC5 (subtype, ',');
				if (tmp) {
					*tmp++ = 0;
					tmp = FUNC5 (tmp, ',');
					if (tmp) {
						*tmp++ = 0;
					}
					char *subname = tmp;
					// TODO: Go recurse here
					query = FUNC2 ("struct.%s.%s.meta", subtype, subname);
					btype = FUNC4 (anal->sdb_types, query, 0);
					FUNC7 (subtype, 0, btype);
				}
				FUNC0 (subtype);
				ptr = next;
			} while (next);
			FUNC0 (members);
		}
		FUNC7 ((char *)typename, typesize, btype);
	}
	return 0;
}