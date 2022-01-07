
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct script_ctx {int client; } ;
typedef int lua_State ;


 int check_error (int *,int ) ;
 struct script_ctx* get_ctx (int *) ;
 void* luaL_checkinteger (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int mpv_hook_add (int ,void*,char const*,int) ;

__attribute__((used)) static int script_raw_hook_add(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    uint64_t ud = luaL_checkinteger(L, 1);
    const char *name = luaL_checkstring(L, 2);
    int pri = luaL_checkinteger(L, 3);
    return check_error(L, mpv_hook_add(ctx->client, ud, name, pri));
}
