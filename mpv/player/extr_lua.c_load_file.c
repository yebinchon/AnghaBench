
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int dummy; } ;
typedef int lua_State ;


 int MP_DBG (struct script_ctx*,char*,char const*) ;
 struct script_ctx* get_ctx (int *) ;
 int luaL_loadfile (int *,char const*) ;
 int lua_call (int *,int ,int ) ;
 int lua_error (int *) ;

__attribute__((used)) static void load_file(lua_State *L, const char *fname)
{
    struct script_ctx *ctx = get_ctx(L);
    MP_DBG(ctx, "loading file %s\n", fname);
    int r = luaL_loadfile(L, fname);
    if (r)
        lua_error(L);
    lua_call(L, 0, 0);
}
