
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p ;
typedef int lua_State ;
typedef int luaL_Buffer ;
typedef char int16_t ;


 int LUAL_BUFFERSIZE ;
 int VFS_RES_ERR ;
 int VFS_SEEK_CUR ;
 int luaL_addchar (int *,char) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_error (int *,char*) ;
 int luaL_pushresult (int *) ;
 int lua_pushnil (int *) ;
 int vfs_lseek (int,int,int ) ;
 int vfs_read (int,char*,int) ;

__attribute__((used)) static int file_g_read( lua_State* L, int n, int16_t end_char, int fd )
{
  int i, j;
  luaL_Buffer b;
  char p[LUAL_BUFFERSIZE/2];

  if(!fd)
    return luaL_error(L, "open a file first");

  luaL_buffinit(L, &b);

  for (j = 0; j < n; j += sizeof(p)) {
    int nwanted = (n - j >= sizeof(p)) ? sizeof(p) : n - j;
    int nread = vfs_read(fd, p, nwanted);

    if (nread == VFS_RES_ERR || nread == 0) {
      lua_pushnil(L);
      return 1;
    }

    for (i = 0; i < nread; ++i) {
      luaL_addchar(&b, p[i]);
      if (p[i] == end_char) {
        vfs_lseek(fd, -nread + j + i + 1, VFS_SEEK_CUR);
        nread = 0;
        break;
      }
    }

    if (nread < nwanted)
      break;
  }
  luaL_pushresult(&b);
  return 1;
}
