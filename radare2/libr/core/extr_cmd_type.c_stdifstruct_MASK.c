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
 int /*<<< orphan*/  TDB_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(void *user, const char *k, const char *v) {
	FUNC0 (TDB_, false);
	if (!FUNC4 (v, "struct")) {
		return true;
	}
	if (!FUNC4 (v, "typedef")) {
		const char *typedef_key = FUNC3 ("typedef.%s", k);
		const char *type = FUNC2 (TDB_, typedef_key, NULL);
		if (type && FUNC1 (type, "struct ")) {
			return true;
		}
	}
	return false;
}