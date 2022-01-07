
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int dummy; } ;
typedef int lua_State ;
typedef int buf ;


 int MP_DBG (struct script_ctx*,char*,char const*) ;
 struct script_ctx* get_ctx (int *) ;
 scalar_t__ luaL_loadstring (int *,char*) ;
 int lua_call (int *,int ,int ) ;
 int lua_error (int *) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void require(lua_State *L, const char *name)
{
    struct script_ctx *ctx = get_ctx(L);
    MP_DBG(ctx, "loading %s\n", name);

    char buf[80];
    snprintf(buf, sizeof(buf), "require '%s'", name);
    if (luaL_loadstring(L, buf))
        lua_error(L);
    lua_call(L, 0, 0);
}
