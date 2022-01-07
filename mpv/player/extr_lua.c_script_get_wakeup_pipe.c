
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int client; } ;
typedef int lua_State ;


 struct script_ctx* get_ctx (int *) ;
 int lua_pushinteger (int *,int ) ;
 int mpv_get_wakeup_pipe (int ) ;

__attribute__((used)) static int script_get_wakeup_pipe(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    lua_pushinteger(L, mpv_get_wakeup_pipe(ctx->client));
    return 1;
}
