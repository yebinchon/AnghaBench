
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct script_ctx {int client; } ;
typedef int lua_State ;


 struct script_ctx* get_ctx (int *) ;
 int luaL_checknumber (int *,int) ;
 int lua_pushnumber (int *,int ) ;
 int mpv_unobserve_property (int ,int ) ;

__attribute__((used)) static int script_raw_unobserve_property(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    uint64_t id = luaL_checknumber(L, 1);
    lua_pushnumber(L, mpv_unobserve_property(ctx->client, id));
    return 1;
}
