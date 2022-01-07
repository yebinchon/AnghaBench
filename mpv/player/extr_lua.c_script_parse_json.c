
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_node {int dummy; } ;
typedef int lua_State ;


 scalar_t__ json_parse (void*,struct mpv_node*,char**,int) ;
 int json_skip_whitespace (char**) ;
 int luaL_checkstring (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_toboolean (int *,int) ;
 void* mp_lua_PITA (int *) ;
 int mp_lua_optarg (int *,int) ;
 int pushnode (int *,struct mpv_node*) ;
 int talloc_free_children (void*) ;
 char* talloc_strdup (void*,int ) ;

__attribute__((used)) static int script_parse_json(lua_State *L)
{
    mp_lua_optarg(L, 2);
    void *tmp = mp_lua_PITA(L);
    char *text = talloc_strdup(tmp, luaL_checkstring(L, 1));
    bool trail = lua_toboolean(L, 2);
    bool ok = 0;
    struct mpv_node node;
    if (json_parse(tmp, &node, &text, 32) >= 0) {
        json_skip_whitespace(&text);
        ok = !text[0] || trail;
    }
    if (ok) {
        pushnode(L, &node);
        lua_pushnil(L);
    } else {
        lua_pushnil(L);
        lua_pushstring(L, "error");
    }
    lua_pushstring(L, text);
    talloc_free_children(tmp);
    return 3;
}
