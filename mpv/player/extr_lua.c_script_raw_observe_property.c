
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct script_ctx {int client; } ;
typedef int mpv_format ;
typedef int lua_State ;


 int check_error (int *,int ) ;
 int check_property_format (int *,int) ;
 struct script_ctx* get_ctx (int *) ;
 int luaL_checknumber (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int mpv_observe_property (int ,int ,char const*,int ) ;

__attribute__((used)) static int script_raw_observe_property(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    uint64_t id = luaL_checknumber(L, 1);
    const char *name = luaL_checkstring(L, 2);
    mpv_format format = check_property_format(L, 3);
    return check_error(L, mpv_observe_property(ctx->client, id, name, format));
}
