
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_node {int dummy; } ;
typedef int lua_State ;


 scalar_t__ json_write (char**,struct mpv_node*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int makenode (void*,struct mpv_node*,int *,int) ;
 void* mp_lua_PITA (int *) ;
 int talloc_free_children (void*) ;
 char* talloc_strdup (void*,char*) ;

__attribute__((used)) static int script_format_json(lua_State *L)
{
    void *tmp = mp_lua_PITA(L);
    struct mpv_node node;
    makenode(tmp, &node, L, 1);
    char *dst = talloc_strdup(tmp, "");
    if (json_write(&dst, &node) >= 0) {
        lua_pushstring(L, dst);
        lua_pushnil(L);
    } else {
        lua_pushnil(L);
        lua_pushstring(L, "error");
    }
    talloc_free_children(tmp);
    return 2;
}
