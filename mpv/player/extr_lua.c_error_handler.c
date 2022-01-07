
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int dummy; } ;
typedef int lua_State ;


 int MP_WARN (struct script_ctx*,char*,char const*) ;
 struct script_ctx* get_ctx (int *) ;
 scalar_t__ luaL_loadstring (int *,char*) ;
 int lua_call (int *,int ,int) ;
 int lua_pop (int *,int) ;
 char* lua_tostring (int *,int) ;

__attribute__((used)) static int error_handler(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);

    if (luaL_loadstring(L, "return debug.traceback('', 3)") == 0) {
        lua_call(L, 0, 1);
        const char *tr = lua_tostring(L, -1);
        MP_WARN(ctx, "%s\n", tr ? tr : "(unknown)");
    }
    lua_pop(L, 1);

    return 1;
}
