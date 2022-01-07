
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {scalar_t__ fd; } ;
typedef TYPE_1__ file_fd_ud ;


 int FALSE ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TUSERDATA ;
 scalar_t__ file_fd_ref ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 scalar_t__ lua_type (int *,int) ;
 int vfs_close (scalar_t__) ;

__attribute__((used)) static int file_close( lua_State* L )
{
  int need_pop = FALSE;
  file_fd_ud *ud;

  if (lua_type( L, 1 ) != LUA_TUSERDATA) {

    if (file_fd_ref != LUA_NOREF) {
      lua_rawgeti( L, LUA_REGISTRYINDEX, file_fd_ref );

      ud = (file_fd_ud *)luaL_checkudata(L, -1, "file.obj");
      lua_pop( L, 1 );
    } else {

      return 0;
    }
  } else {
    ud = (file_fd_ud *)luaL_checkudata(L, 1, "file.obj");
  }

  if(ud->fd){
      vfs_close(ud->fd);

      ud->fd = 0;
  }


  luaL_unref( L, LUA_REGISTRYINDEX, file_fd_ref );
  file_fd_ref = LUA_NOREF;

  return 0;
}
