
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned int const st_mode; unsigned int const st_size; unsigned int const st_atime; unsigned int const st_mtime; unsigned int const st_ctime; } ;
typedef int lua_State ;


 int S_ISDIR (unsigned int const) ;
 int S_ISREG (unsigned int const) ;
 char* luaL_checkstring (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,unsigned int const) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int script_file_info(lua_State *L)
{
    const char *path = luaL_checkstring(L, 1);

    struct stat statbuf;
    if (stat(path, &statbuf) != 0) {
        lua_pushnil(L);
        lua_pushstring(L, "error");
        return 2;
    }

    lua_newtable(L);

    const char * stat_names[] = {
        "mode", "size",
        "atime", "mtime", "ctime", ((void*)0)
    };
    const unsigned int stat_values[] = {
        statbuf.st_mode,
        statbuf.st_size,
        statbuf.st_atime,
        statbuf.st_mtime,
        statbuf.st_ctime
    };


    for (int i = 0; stat_names[i]; i++) {
        lua_pushinteger(L, stat_values[i]);
        lua_setfield(L, -2, stat_names[i]);
    }


    lua_pushboolean(L, S_ISREG(statbuf.st_mode));
    lua_setfield(L, -2, "is_file");

    lua_pushboolean(L, S_ISDIR(statbuf.st_mode));
    lua_setfield(L, -2, "is_dir");


    return 1;
}
