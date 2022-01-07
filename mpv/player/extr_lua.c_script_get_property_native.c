
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int client; } ;
typedef int mpv_node ;
typedef int lua_State ;


 int MPV_FORMAT_NODE ;
 int auto_free_node (void*,int *) ;
 struct script_ctx* get_ctx (int *) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushstring (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 void* mp_lua_PITA (int *) ;
 int mp_lua_optarg (int *,int) ;
 int mpv_error_string (int) ;
 int mpv_get_property (int ,char const*,int ,int *) ;
 int pushnode (int *,int *) ;
 int talloc_free_children (void*) ;

__attribute__((used)) static int script_get_property_native(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    const char *name = luaL_checkstring(L, 1);
    mp_lua_optarg(L, 2);
    void *tmp = mp_lua_PITA(L);

    mpv_node node;
    int err = mpv_get_property(ctx->client, name, MPV_FORMAT_NODE, &node);
    if (err >= 0) {
        auto_free_node(tmp, &node);
        pushnode(L, &node);
        talloc_free_children(tmp);
        return 1;
    }
    lua_pushvalue(L, 2);
    lua_pushstring(L, mpv_error_string(err));
    return 2;
}
