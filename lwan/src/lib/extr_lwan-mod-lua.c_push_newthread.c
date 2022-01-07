
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coro {int dummy; } ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ UNLIKELY (int) ;
 int coro_defer2 (struct coro*,int ,int *,void*) ;
 int luaL_ref (int *,int ) ;
 int * lua_newthread (int *) ;
 int unref_thread ;

__attribute__((used)) static lua_State *push_newthread(lua_State *L, struct coro *coro)
{
    lua_State *L1 = lua_newthread(L);

    if (UNLIKELY(!L1))
        return ((void*)0);

    int thread_ref = luaL_ref(L, LUA_REGISTRYINDEX);
    coro_defer2(coro, unref_thread, L, (void *)(intptr_t)thread_ref);

    return L1;
}
