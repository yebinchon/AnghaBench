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
typedef  scalar_t__ ut64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC3 (void const*) ; 
 char* FUNC4 (char*,int) ; 
 int FUNC5 (char*) ; 
 int sorted_column ; 
 int FUNC6 (void const*,void const*) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(const void *a, const void *b) {
	char *da = NULL;
	char *db = NULL;
	const char *ca = FUNC3 (a);
	const char *cb = FUNC3 (b);
	if (!a || !b) {
		return (int) (size_t) ((char*) a - (char*) b);
	}
	if (sorted_column > 0) {
		da = FUNC7 (ca);
		db = FUNC7 (cb);
		int colsa = FUNC5 (da);
		int colsb = FUNC5 (db);
		ca = (colsa > sorted_column)? FUNC4 (da, sorted_column): "";
		cb = (colsb > sorted_column)? FUNC4 (db, sorted_column): "";
	}
	if (FUNC0 (*ca) && FUNC0 (*cb)) {
		ut64 na = FUNC2 (NULL, ca);
		ut64 nb = FUNC2 (NULL, cb);
		int ret = na > nb;
		FUNC1 (da);
		FUNC1 (db);
		return ret;
	}
	if (da && db) {
		int ret = FUNC6 (ca, cb);
		FUNC1 (da);
		FUNC1 (db);
		return ret;
	}
	FUNC1 (da);
	FUNC1 (db);
	return FUNC6 (a, b);
}