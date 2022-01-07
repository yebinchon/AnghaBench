
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int global; } ;
typedef int lua_State ;


 struct MPContext* get_mpctx (int *) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 char* mp_find_config_file (int *,int ,char const*) ;
 int talloc_free (char*) ;

__attribute__((used)) static int script_find_config_file(lua_State *L)
{
    struct MPContext *mpctx = get_mpctx(L);
    const char *s = luaL_checkstring(L, 1);
    char *path = mp_find_config_file(((void*)0), mpctx->global, s);
    if (path) {
        lua_pushstring(L, path);
    } else {
        lua_pushnil(L);
    }
    talloc_free(path);
    return 1;
}
