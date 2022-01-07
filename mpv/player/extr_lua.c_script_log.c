
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int log; } ;
typedef int lua_State ;


 int check_loglevel (int *,int) ;
 struct script_ctx* get_ctx (int *) ;
 int luaL_error (int *,char*) ;
 int lua_call (int *,int,int) ;
 int lua_getglobal (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 char* lua_tostring (int *,int) ;
 int mp_msg (int ,int,char*,...) ;

__attribute__((used)) static int script_log(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);

    int msgl = check_loglevel(L, 1);

    int last = lua_gettop(L);
    lua_getglobal(L, "tostring");
    for (int i = 2; i <= last; i++) {
        lua_pushvalue(L, -1);
        lua_pushvalue(L, i);
        lua_call(L, 1, 1);
        const char *s = lua_tostring(L, -1);
        if (s == ((void*)0))
            return luaL_error(L, "Invalid argument");
        mp_msg(ctx->log, msgl, "%s%s", s, i > 0 ? " " : "");
        lua_pop(L, 1);
    }
    mp_msg(ctx->log, msgl, "\n");

    return 0;
}
