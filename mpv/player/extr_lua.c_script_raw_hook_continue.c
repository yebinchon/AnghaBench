
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int client; } ;
typedef int lua_State ;
typedef int lua_Integer ;


 int check_error (int *,int ) ;
 struct script_ctx* get_ctx (int *) ;
 int luaL_checkinteger (int *,int) ;
 int mpv_hook_continue (int ,int ) ;

__attribute__((used)) static int script_raw_hook_continue(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    lua_Integer id = luaL_checkinteger(L, 1);
    return check_error(L, mpv_hook_continue(ctx->client, id));
}
