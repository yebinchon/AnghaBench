#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ verbose; } ;
typedef  TYPE_1__ RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const*) ; 
 char* FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static char *FUNC5(RAnal *anal, const char *original_name) {
	if (!FUNC2 (anal, original_name)) {
		return FUNC4 (original_name);
	}

	char *name = NULL;
	if (anal->verbose) {
		FUNC0 ("Warning: class name %s already taken!\n", original_name);
	}
	int i = 1;

	do {
		FUNC1 (name);
		name = FUNC3 ("%s.%d", original_name, i++);
		if (!name) {
			return NULL;
		}
	} while (FUNC2 (anal, name));

	return name;
}