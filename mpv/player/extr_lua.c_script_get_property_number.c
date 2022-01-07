
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int client; } ;
typedef int lua_State ;


 int MPV_FORMAT_DOUBLE ;
 struct script_ctx* get_ctx (int *) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushnumber (int *,double) ;
 int lua_pushstring (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int mpv_error_string (int) ;
 int mpv_get_property (int ,char const*,int ,double*) ;

__attribute__((used)) static int script_get_property_number(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    const char *name = luaL_checkstring(L, 1);


    double result = 0;
    int err = mpv_get_property(ctx->client, name, MPV_FORMAT_DOUBLE, &result);
    if (err >= 0) {
        lua_pushnumber(L, result);
        return 1;
    } else {
        lua_pushvalue(L, 2);
        lua_pushstring(L, mpv_error_string(err));
        return 2;
    }
}
