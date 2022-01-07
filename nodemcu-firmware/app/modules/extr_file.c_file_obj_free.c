
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {scalar_t__ fd; } ;
typedef TYPE_1__ file_fd_ud ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int vfs_close (scalar_t__) ;

__attribute__((used)) static int file_obj_free( lua_State *L )
{
  file_fd_ud *ud = (file_fd_ud *)luaL_checkudata(L, 1, "file.obj");
  if (ud->fd) {

    vfs_close(ud->fd);
    ud->fd = 0;
  }

  return 0;
}
