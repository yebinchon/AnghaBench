
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int GET_FILE_OBJ ;



 int argpos ;
 int fd ;
 int luaL_checkoption (int *,int ,char*,char const* const*) ;
 int luaL_error (int *,char*) ;
 long luaL_optlong (int *,int ,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int vfs_lseek (int ,long,int const) ;
 int vfs_tell (int ) ;

__attribute__((used)) static int file_seek (lua_State *L)
{
  GET_FILE_OBJ;

  static const int mode[] = {128, 130, 129};
  static const char *const modenames[] = {"set", "cur", "end", ((void*)0)};
  if(!fd)
    return luaL_error(L, "open a file first");
  int op = luaL_checkoption(L, argpos, "cur", modenames);
  long offset = luaL_optlong(L, ++argpos, 0);
  op = vfs_lseek(fd, offset, mode[op]);
  if (op < 0)
    lua_pushnil(L);
  else
    lua_pushinteger(L, vfs_tell(fd));
  return 1;
}
