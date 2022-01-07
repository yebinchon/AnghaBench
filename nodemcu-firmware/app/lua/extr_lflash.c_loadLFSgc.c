
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ fd; int flagsLen; scalar_t__ flags; struct TYPE_4__** block; } ;


 int WRITE_BLOCKS ;
 TYPE_1__* in ;
 int luaM_free (int *,TYPE_1__*) ;
 int luaM_freearray (int *,scalar_t__,int ,int ) ;
 TYPE_1__* out ;
 int uint32_t ;
 int vfs_close (scalar_t__) ;

__attribute__((used)) static int loadLFSgc (lua_State *L) {
  int i;
  if (out) {
    for (i = 0; i < WRITE_BLOCKS; i++)
      if (out->block[i])
        luaM_free(L, out->block[i]);
    if (out->flags)
      luaM_freearray(L, out->flags, out->flagsLen, uint32_t);
    luaM_free(L, out);
  }
  if (in) {
    if (in->fd)
      vfs_close(in->fd);
    luaM_free(L, in);
  }
  return 0;
}
