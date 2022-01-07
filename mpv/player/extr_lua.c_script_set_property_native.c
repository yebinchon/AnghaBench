
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int client; } ;
struct mpv_node {int dummy; } ;
typedef int lua_State ;


 int MPV_FORMAT_NODE ;
 int check_error (int *,int) ;
 struct script_ctx* get_ctx (int *) ;
 char* luaL_checkstring (int *,int) ;
 int makenode (void*,struct mpv_node*,int *,int) ;
 void* mp_lua_PITA (int *) ;
 int mpv_set_property (int ,char const*,int ,struct mpv_node*) ;
 int talloc_free_children (void*) ;

__attribute__((used)) static int script_set_property_native(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    const char *p = luaL_checkstring(L, 1);
    struct mpv_node node;
    void *tmp = mp_lua_PITA(L);
    makenode(tmp, &node, L, 2);
    int res = mpv_set_property(ctx->client, p, MPV_FORMAT_NODE, &node);
    talloc_free_children(tmp);
    return check_error(L, res);

}
