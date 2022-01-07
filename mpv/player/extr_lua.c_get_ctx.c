
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int dummy; } ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int assert (struct script_ctx*) ;
 int lua_getfield (int *,int ,char*) ;
 int lua_pop (int *,int) ;
 struct script_ctx* lua_touserdata (int *,int) ;

__attribute__((used)) static struct script_ctx *get_ctx(lua_State *L)
{
    lua_getfield(L, LUA_REGISTRYINDEX, "ctx");
    struct script_ctx *ctx = lua_touserdata(L, -1);
    lua_pop(L, 1);
    assert(ctx);
    return ctx;
}
