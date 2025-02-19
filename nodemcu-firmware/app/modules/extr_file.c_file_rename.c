
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 size_t FS_OBJ_NAME_LEN ;
 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushboolean (int *,int) ;
 size_t strlen (char const*) ;
 char* vfs_basename (char const*) ;
 scalar_t__ vfs_rename (char const*,char const*) ;

__attribute__((used)) static int file_rename( lua_State* L )
{
  size_t len;

  const char *oldname = luaL_checklstring( L, 1, &len );
  const char *basename = vfs_basename( oldname );
  luaL_argcheck(L, strlen(basename) <= FS_OBJ_NAME_LEN && strlen(oldname) == len, 1, "filename invalid");

  const char *newname = luaL_checklstring( L, 2, &len );
  basename = vfs_basename( newname );
  luaL_argcheck(L, strlen(basename) <= FS_OBJ_NAME_LEN && strlen(newname) == len, 2, "filename invalid");

  if(0 <= vfs_rename( oldname, newname )){
    lua_pushboolean(L, 1);
  } else {
    lua_pushboolean(L, 0);
  }
  return 1;
}
