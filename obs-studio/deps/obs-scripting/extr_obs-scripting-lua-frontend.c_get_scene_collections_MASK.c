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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 char** FUNC4 () ; 

__attribute__((used)) static int FUNC5(lua_State *script)
{
	char **names = FUNC4();
	char **name = names;
	int i = 0;

	FUNC1(script);

	while (name && *name) {
		FUNC2(script, *name);
		FUNC3(script, -2, ++i);
		name++;
	}

	FUNC0(names);
	return 1;
}