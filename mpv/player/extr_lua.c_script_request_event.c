
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int client; } ;
typedef int lua_State ;


 struct script_ctx* get_ctx (int *) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_toboolean (int *,int) ;
 char* mpv_event_name (int) ;
 scalar_t__ mpv_request_event (int ,int,int) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int script_request_event(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    const char *event = luaL_checkstring(L, 1);
    bool enable = lua_toboolean(L, 2);

    int event_id = -1;
    for (int n = 0; n < 256; n++) {
        const char *name = mpv_event_name(n);
        if (name && strcmp(name, event) == 0) {
            event_id = n;
            break;
        }
    }
    lua_pushboolean(L, mpv_request_event(ctx->client, event_id, enable) >= 0);
    return 1;
}
