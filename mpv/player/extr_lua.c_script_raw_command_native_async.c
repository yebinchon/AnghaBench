
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct script_ctx {int client; } ;
struct mpv_node {int dummy; } ;
typedef int lua_State ;


 int check_error (int *,int) ;
 struct script_ctx* get_ctx (int *) ;
 int luaL_checknumber (int *,int) ;
 int makenode (void*,struct mpv_node*,int *,int) ;
 void* mp_lua_PITA (int *) ;
 int mpv_command_node_async (int ,int ,struct mpv_node*) ;
 int talloc_free_children (void*) ;

__attribute__((used)) static int script_raw_command_native_async(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    uint64_t id = luaL_checknumber(L, 1);
    struct mpv_node node;
    void *tmp = mp_lua_PITA(L);
    makenode(tmp, &node, L, 2);
    int res = mpv_command_node_async(ctx->client, id, &node);
    talloc_free_children(tmp);
    return check_error(L, res);
}
