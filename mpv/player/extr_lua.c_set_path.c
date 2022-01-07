
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int global; } ;


 TYPE_1__* get_mpctx (int *) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 char* lua_tostring (int *,int) ;
 char** mp_find_all_config_files (void*,int ,char*) ;
 int mp_path_join (void*,char*,char*) ;
 char* talloc_asprintf_append (char*,char*,int ) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 char* talloc_strdup (void*,char const*) ;

__attribute__((used)) static void set_path(lua_State *L)
{
    void *tmp = talloc_new(((void*)0));

    lua_getglobal(L, "package");
    lua_getfield(L, -1, "path");
    const char *path = lua_tostring(L, -1);

    char *newpath = talloc_strdup(tmp, path ? path : "");
    char **luadir = mp_find_all_config_files(tmp, get_mpctx(L)->global, "scripts");
    for (int i = 0; luadir && luadir[i]; i++) {
        newpath = talloc_asprintf_append(newpath, ";%s",
                        mp_path_join(tmp, luadir[i], "?.lua"));
    }

    lua_pushstring(L, newpath);
    lua_setfield(L, -3, "path");
    lua_pop(L, 2);

    talloc_free(tmp);
}
