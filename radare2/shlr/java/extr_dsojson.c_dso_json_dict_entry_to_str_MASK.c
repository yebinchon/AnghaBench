#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ DsoJsonDictEntry ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,...) ; 
 int FUNC4 (char*) ; 

char * FUNC5 (DsoJsonDictEntry * entry) {
	char *res = NULL;
	if (entry) {
		char *key = FUNC1 (entry->key);
		char *value = FUNC1 (entry->value);
		if (key) {
			int len = 2 + 3 + FUNC4 (key);
			if (value) len += FUNC4 (value);
			res = FUNC0 (len, 1);
			if (res) {
				if (value) {
					FUNC3 (res, len, "%s:%s", key, value);
				} else {
					FUNC3 (res, len, "%s:\"\"", key);
				}
			}
			FUNC2 (key);
		}
		FUNC2 (value);
	}
	return res;
}