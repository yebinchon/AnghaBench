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
struct MPContext {int /*<<< orphan*/  global; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 struct MPContext* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(lua_State *L)
{
    struct MPContext *mpctx = FUNC0(L);
    const char *s = FUNC1(L, 1);
    char *path = FUNC4(NULL, mpctx->global, s);
    if (path) {
        FUNC3(L, path);
    } else {
        FUNC2(L);
    }
    FUNC5(path);
    return 1;
}