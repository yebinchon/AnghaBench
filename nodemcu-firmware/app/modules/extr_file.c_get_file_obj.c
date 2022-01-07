
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ file_fd_ud ;


 scalar_t__ LUA_TUSERDATA ;
 int file_fd ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int get_file_obj( lua_State *L, int *argpos )
{
  if (lua_type( L, 1 ) == LUA_TUSERDATA) {
    file_fd_ud *ud = (file_fd_ud *)luaL_checkudata(L, 1, "file.obj");
    *argpos = 2;
    return ud->fd;
  } else {
    *argpos = 1;
    return file_fd;
  }
}
