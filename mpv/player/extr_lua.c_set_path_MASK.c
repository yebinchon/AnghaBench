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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  global; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 char** FUNC7 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,char*) ; 
 char* FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (void*,char const*) ; 

__attribute__((used)) static void FUNC13(lua_State *L)
{
    void *tmp = FUNC11(NULL);

    FUNC2(L, "package"); // package
    FUNC1(L, -1, "path"); // package path
    const char *path = FUNC6(L, -1);

    char *newpath = FUNC12(tmp, path ? path : "");
    char **luadir = FUNC7(tmp, FUNC0(L)->global, "scripts");
    for (int i = 0; luadir && luadir[i]; i++) {
        newpath = FUNC9(newpath, ";%s",
                        FUNC8(tmp, luadir[i], "?.lua"));
    }

    FUNC4(L, newpath);  // package path newpath
    FUNC5(L, -3, "path"); // package path
    FUNC3(L, 2);  // -

    FUNC10(tmp);
}