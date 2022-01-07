
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int client; } ;
struct mpv_node {int dummy; } ;
typedef int lua_State ;


 int auto_free_node (void*,struct mpv_node*) ;
 struct script_ctx* get_ctx (int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int makenode (void*,struct mpv_node*,int *,int) ;
 void* mp_lua_PITA (int *) ;
 int mp_lua_optarg (int *,int) ;
 int mpv_command_node (int ,struct mpv_node*,struct mpv_node*) ;
 int mpv_error_string (int) ;
 int pushnode (int *,struct mpv_node*) ;
 int talloc_free_children (void*) ;

__attribute__((used)) static int script_command_native(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    mp_lua_optarg(L, 2);
    struct mpv_node node;
    struct mpv_node result;
    void *tmp = mp_lua_PITA(L);
    makenode(tmp, &node, L, 1);
    int err = mpv_command_node(ctx->client, &node, &result);
    if (err >= 0) {
        auto_free_node(tmp, &result);
        pushnode(L, &result);
        talloc_free_children(tmp);
        return 1;
    }
    lua_pushvalue(L, 2);
    lua_pushstring(L, mpv_error_string(err));
    return 2;
}
