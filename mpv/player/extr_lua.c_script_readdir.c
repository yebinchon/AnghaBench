
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int lua_State ;
typedef int DIR ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int closedir (int *) ;
 int luaL_checkoption (int *,int,char*,char const**) ;
 char* luaL_checkstring (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_settable (int *,int) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* talloc_asprintf_append (char*,char*,char const*,char*) ;
 int talloc_free (char*) ;

__attribute__((used)) static int script_readdir(lua_State *L)
{

    const char *fmts[] = {"all", "files", "dirs", "normal", ((void*)0)};
    const char *path = luaL_checkstring(L, 1);
    int t = luaL_checkoption(L, 2, "normal", fmts);
    DIR *dir = opendir(path);
    if (!dir) {
        lua_pushnil(L);
        lua_pushstring(L, "error");
        return 2;
    }
    lua_newtable(L);
    char *fullpath = ((void*)0);
    struct dirent *e;
    int n = 0;
    while ((e = readdir(dir))) {
        char *name = e->d_name;
        if (t) {
            if (strcmp(name, ".") == 0 || strcmp(name, "..") == 0)
                continue;
            if (fullpath)
                fullpath[0] = '\0';
            fullpath = talloc_asprintf_append(fullpath, "%s/%s", path, name);
            struct stat st;
            if (stat(fullpath, &st))
                continue;
            if (!(((t & 1) && S_ISREG(st.st_mode)) ||
                  ((t & 2) && S_ISDIR(st.st_mode))))
                continue;
        }
        lua_pushinteger(L, ++n);
        lua_pushstring(L, name);
        lua_settable(L, -3);
    }
    closedir(dir);
    talloc_free(fullpath);
    return 1;
}
