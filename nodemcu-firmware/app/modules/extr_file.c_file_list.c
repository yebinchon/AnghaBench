
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_dir ;
struct vfs_stat {int name; int size; } ;
typedef int lua_State ;


 scalar_t__ VFS_RES_OK ;
 int luaL_getmetafield (int *,int,char*) ;
 char* luaL_optstring (int *,int,int *) ;
 int lua_error (int *) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pcall (int *,int,int,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,int ) ;
 int lua_settop (int *,int) ;
 int vfs_closedir (int *) ;
 int * vfs_opendir (char*) ;
 scalar_t__ vfs_readdir (int *,struct vfs_stat*) ;

__attribute__((used)) static int file_list( lua_State* L )
{
  vfs_dir *dir;
  const char *pattern;
  struct vfs_stat stat;
  int pcres;

  lua_settop(L, 1);
  pattern = luaL_optstring(L, 1, ((void*)0));

  dir = vfs_opendir("");
  if (dir == ((void*)0)) {
    return 0;
  }

  lua_newtable( L );

  if (pattern) {




    luaL_getmetafield( L, 1, "match" );
  }

  while (vfs_readdir(dir, &stat) == VFS_RES_OK) {
    if (pattern) {
      lua_settop( L, 3 );


      lua_pushvalue( L, 3 );
      lua_pushstring( L, stat.name );
      lua_pushvalue( L, 1 );
      pcres = lua_pcall( L, 2, 1, 0 );
      if (pcres != 0) {
        vfs_closedir(dir);
        lua_error( L );
      }
      if (lua_isnil( L, -1 )) {
        continue;
      }
    }
    lua_pushinteger( L, stat.size );
    lua_setfield( L, 2, stat.name );
  }


  lua_settop( L, 2 );
  vfs_closedir(dir);
  return 1;
}
