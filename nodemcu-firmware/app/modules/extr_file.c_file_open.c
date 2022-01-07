
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {scalar_t__ fd; } ;
typedef TYPE_1__ file_fd_ud ;


 size_t FS_OBJ_NAME_LEN ;
 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ file_fd ;
 int file_fd_ref ;
 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_getmetatable (int *,char*) ;
 char* luaL_optstring (int *,int,char*) ;
 int luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,int ) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_setmetatable (int *,int) ;
 size_t strlen (char const*) ;
 char* vfs_basename (char const*) ;
 scalar_t__ vfs_open (char const*,char const*) ;

__attribute__((used)) static int file_open( lua_State* L )
{
  size_t len;


  luaL_unref( L, LUA_REGISTRYINDEX, file_fd_ref );
  file_fd_ref = LUA_NOREF;

  const char *fname = luaL_checklstring( L, 1, &len );
  const char *basename = vfs_basename( fname );
  luaL_argcheck(L, strlen(basename) <= FS_OBJ_NAME_LEN && strlen(fname) == len, 1, "filename invalid");

  const char *mode = luaL_optstring(L, 2, "r");

  file_fd = vfs_open(fname, mode);

  if(!file_fd){
    lua_pushnil(L);
  } else {
    file_fd_ud *ud = (file_fd_ud *) lua_newuserdata( L, sizeof( file_fd_ud ) );
    ud->fd = file_fd;
    luaL_getmetatable( L, "file.obj" );
    lua_setmetatable( L, -2 );


    lua_pushvalue( L, -1 );
    file_fd_ref = luaL_ref( L, LUA_REGISTRYINDEX );
  }
  return 1;
}
