
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int client; } ;
typedef int lua_State ;


 int check_error (int *,int ) ;
 int check_loglevel (int *,int) ;
 struct script_ctx* get_ctx (int *) ;
 char* luaL_checkstring (int *,int) ;
 int mpv_request_log_messages (int ,char const*) ;

__attribute__((used)) static int script_enable_messages(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    check_loglevel(L, 1);
    const char *level = luaL_checkstring(L, 1);
    return check_error(L, mpv_request_log_messages(ctx->client, level));
}
