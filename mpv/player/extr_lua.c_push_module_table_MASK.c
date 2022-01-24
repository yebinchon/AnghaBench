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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static void FUNC8(lua_State *L, const char *module)
{
    FUNC1(L, "package"); // package
    FUNC0(L, -1, "loaded"); // package loaded
    FUNC6(L, -2); // loaded
    FUNC0(L, -1, module); // loaded module
    if (FUNC2(L, -1)) {
        FUNC4(L, 1); // loaded
        FUNC3(L); // loaded module
        FUNC5(L, -1); // loaded module module
        FUNC7(L, -3, module); // loaded module
    }
    FUNC6(L, -2); // module
}