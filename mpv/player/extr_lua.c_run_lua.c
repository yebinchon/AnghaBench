
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int name; } ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TTABLE ;
 int MP_FATAL (struct script_ctx*,char*,char const*) ;
 int add_functions (struct script_ctx*) ;
 int assert (int) ;
 char*** builtin_lua_scripts ;
 int error_handler ;
 int load_builtin ;
 int load_scripts ;
 int luaL_openlibs (int *) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_newtable (int *) ;
 scalar_t__ lua_pcall (int *,int ,int ,int) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlightuserdata (int *,struct script_ctx*) ;
 int lua_pushstring (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setglobal (int *,char*) ;
 char* lua_tostring (int *,int) ;
 struct script_ctx* lua_touserdata (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int push_module_table (int *,char*) ;
 int set_path (int *) ;

__attribute__((used)) static int run_lua(lua_State *L)
{
    struct script_ctx *ctx = lua_touserdata(L, -1);
    lua_pop(L, 1);

    luaL_openlibs(L);


    lua_pushlightuserdata(L, ctx);
    lua_setfield(L, LUA_REGISTRYINDEX, "ctx");

    add_functions(ctx);

    push_module_table(L, "mp");


    lua_pushvalue(L, -1);
    lua_setglobal(L, "mp");

    lua_pushstring(L, ctx->name);
    lua_setfield(L, -2, "script_name");


    lua_newtable(L);
    lua_pushvalue(L, -1);
    lua_setfield(L, LUA_REGISTRYINDEX, "UNKNOWN_TYPE");
    lua_setfield(L, -2, "UNKNOWN_TYPE");
    lua_newtable(L);
    lua_pushvalue(L, -1);
    lua_setfield(L, LUA_REGISTRYINDEX, "MAP");
    lua_setfield(L, -2, "MAP");
    lua_newtable(L);
    lua_pushvalue(L, -1);
    lua_setfield(L, LUA_REGISTRYINDEX, "ARRAY");
    lua_setfield(L, -2, "ARRAY");

    lua_pop(L, 1);

    assert(lua_gettop(L) == 0);


    lua_getglobal(L, "package");
    assert(lua_type(L, -1) == LUA_TTABLE);
    lua_getfield(L, -1, "preload");
    assert(lua_type(L, -1) == LUA_TTABLE);
    for (int n = 0; builtin_lua_scripts[n][0]; n++) {
        lua_pushcfunction(L, load_builtin);
        lua_setfield(L, -2, builtin_lua_scripts[n][0]);
    }
    lua_pop(L, 2);

    assert(lua_gettop(L) == 0);

    set_path(L);
    assert(lua_gettop(L) == 0);


    lua_pushcfunction(L, error_handler);
    lua_pushcfunction(L, load_scripts);
    if (lua_pcall(L, 0, 0, -2)) {
        const char *e = lua_tostring(L, -1);
        MP_FATAL(ctx, "Lua error: %s\n", e ? e : "(unknown)");
    }

    return 0;
}
