
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ file_fd_ud ;


 int EOF ;
 int LUAI_MAXINT32 ;
 int file_close (int *) ;
 int file_g_read (int *,int ,int ,int ) ;
 int file_open (int *) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int lua_isnil (int *,int) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int file_getfile( lua_State* L )
{



  int ret_cnt = 0;
  lua_settop(L ,1);

  file_open(L);

  if (!lua_isnil(L, -1)) {
    lua_remove(L, 1);
    file_fd_ud *ud = (file_fd_ud *)luaL_checkudata(L, 1, "file.obj");
    ret_cnt = file_g_read(L, LUAI_MAXINT32, EOF, ud->fd);

    file_close(L);
    lua_remove(L, 1);
  }
  return ret_cnt;
}
