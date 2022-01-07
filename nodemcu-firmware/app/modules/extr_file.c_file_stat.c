
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sec; int min; int hour; int day; int mon; int year; } ;
struct vfs_stat {TYPE_1__ tm; scalar_t__ tm_valid; int is_arch; int is_sys; int is_hidden; int is_rdonly; int is_dir; int name; int size; } ;
typedef int lua_State ;


 int FILE_TIMEDEF_DAY ;
 int FILE_TIMEDEF_HOUR ;
 int FILE_TIMEDEF_MIN ;
 int FILE_TIMEDEF_MON ;
 int FILE_TIMEDEF_SEC ;
 int FILE_TIMEDEF_YEAR ;
 size_t FS_OBJ_NAME_LEN ;
 scalar_t__ VFS_RES_OK ;
 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_createtable (int *,int ,int) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 size_t strlen (char const*) ;
 scalar_t__ vfs_stat (char*,struct vfs_stat*) ;

__attribute__((used)) static int file_stat( lua_State* L )
{
  size_t len;
  const char *fname = luaL_checklstring( L, 1, &len );
  luaL_argcheck( L, strlen(fname) <= FS_OBJ_NAME_LEN && strlen(fname) == len, 1, "filename invalid" );

  struct vfs_stat stat;
  if (vfs_stat( (char *)fname, &stat ) != VFS_RES_OK) {
    lua_pushnil( L );
    return 1;
  }

  lua_createtable( L, 0, 7 );

  lua_pushinteger( L, stat.size );
  lua_setfield( L, -2, "size" );

  lua_pushstring( L, stat.name );
  lua_setfield( L, -2, "name" );

  lua_pushboolean( L, stat.is_dir );
  lua_setfield( L, -2, "is_dir" );

  lua_pushboolean( L, stat.is_rdonly );
  lua_setfield( L, -2, "is_rdonly" );

  lua_pushboolean( L, stat.is_hidden );
  lua_setfield( L, -2, "is_hidden" );

  lua_pushboolean( L, stat.is_sys );
  lua_setfield( L, -2, "is_sys" );

  lua_pushboolean( L, stat.is_arch );
  lua_setfield( L, -2, "is_arch" );


  lua_createtable( L, 0, 6 );

  lua_pushinteger( L, stat.tm_valid ? stat.tm.year : FILE_TIMEDEF_YEAR );
  lua_setfield( L, -2, "year" );

  lua_pushinteger( L, stat.tm_valid ? stat.tm.mon : FILE_TIMEDEF_MON );
  lua_setfield( L, -2, "mon" );

  lua_pushinteger( L, stat.tm_valid ? stat.tm.day : FILE_TIMEDEF_DAY );
  lua_setfield( L, -2, "day" );

  lua_pushinteger( L, stat.tm_valid ? stat.tm.hour : FILE_TIMEDEF_HOUR );
  lua_setfield( L, -2, "hour" );

  lua_pushinteger( L, stat.tm_valid ? stat.tm.min : FILE_TIMEDEF_MIN );
  lua_setfield( L, -2, "min" );

  lua_pushinteger( L, stat.tm_valid ? stat.tm.sec : FILE_TIMEDEF_SEC );
  lua_setfield( L, -2, "sec" );

  lua_setfield( L, -2, "time" );

  return 1;
}
