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
 int /*<<< orphan*/  destroy_crap ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void** FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC7(lua_State *L)
{
    void **data = FUNC1(L, sizeof(void *)); // u
    if (FUNC0(L, "ohthispain")) { // u metatable
        FUNC3(L, -1);  // u metatable metatable
        FUNC4(L, -2, "__index");  // u metatable
        FUNC2(L, destroy_crap); // u metatable gc
        FUNC4(L, -2, "__gc"); // u metatable
    }
    FUNC5(L, -2); // u
    *data = FUNC6(NULL);
    return *data;
}