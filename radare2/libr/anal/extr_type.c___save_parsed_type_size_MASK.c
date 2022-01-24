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
struct TYPE_3__ {int /*<<< orphan*/  sdb_types; } ;
typedef  TYPE_1__ RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(RAnal *anal, const char *parsed) {
	FUNC1 (anal && parsed);
	char *str = FUNC3 (parsed);
	if (str) {
		char *ptr = NULL;
		int offset = 0;
		while ((ptr = FUNC4 (str + offset, "=struct\n")) ||
				(ptr = FUNC4 (str + offset, "=union\n"))) {
			*ptr = 0;
			if (str + offset == ptr) {
				break;
			}
			char *name = ptr - 1;
			while (name > str && *name != '\n') {
				name--;
			}
			if (*name == '\n') {
				name++;
			}
			FUNC2 (anal->sdb_types, name);
			*ptr = '=';
			offset = ptr + 1 - str;
		}
		FUNC0 (str);
	}
}