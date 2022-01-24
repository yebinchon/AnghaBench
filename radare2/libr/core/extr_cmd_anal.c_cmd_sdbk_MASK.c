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
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC4(Sdb *db, const char *input) {
	char *out = (input[0] == ' ')
		? FUNC3 (db, NULL, 0, input + 1)
		: FUNC3 (db, NULL, 0, "*");
	if (out) {
		FUNC2 (out);
		FUNC1 (out);
	} else {
		FUNC0 ("|ERROR| Usage: ask [query]\n");
	}
}