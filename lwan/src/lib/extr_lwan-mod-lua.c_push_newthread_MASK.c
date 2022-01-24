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
struct coro {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct coro*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unref_thread ; 

__attribute__((used)) static lua_State *FUNC4(lua_State *L, struct coro *coro)
{
    lua_State *L1 = FUNC3(L);

    if (FUNC0(!L1))
        return NULL;

    int thread_ref = FUNC2(L, LUA_REGISTRYINDEX);
    FUNC1(coro, unref_thread, L, (void *)(intptr_t)thread_ref);

    return L1;
}