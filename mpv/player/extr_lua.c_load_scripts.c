
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {char* filename; } ;
typedef int lua_State ;


 struct script_ctx* get_ctx (int *) ;
 int load_file (int *,char const*) ;
 int luaL_error (int *,char*) ;
 int lua_call (int *,int ,int ) ;
 int lua_getglobal (int *,char*) ;
 scalar_t__ lua_isnil (int *,int) ;
 int require (int *,char const*) ;

__attribute__((used)) static int load_scripts(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    const char *fname = ctx->filename;

    require(L, "mp.defaults");

    if (fname[0] == '@') {
        require(L, fname);
    } else {
        load_file(L, fname);
    }

    lua_getglobal(L, "mp_event_loop");
    if (lua_isnil(L, -1))
        luaL_error(L, "no event loop function\n");
    lua_call(L, 0, 0);

    return 0;
}
