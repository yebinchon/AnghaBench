
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {char const* buff; int f; scalar_t__ extraline; } ;
typedef TYPE_1__ LoadFSF ;


 scalar_t__ vfs_eof (int ) ;
 size_t vfs_read (int ,char const*,int) ;

__attribute__((used)) static const char *getFSF (lua_State *L, void *ud, size_t *size) {
  LoadFSF *lf = (LoadFSF *)ud;
  (void)L;

  if (L == ((void*)0) && size == ((void*)0))
    return ((void*)0);

  if (lf->extraline) {
    lf->extraline = 0;
    *size = 1;
    return "\n";
  }

  if (vfs_eof(lf->f)) return ((void*)0);
  *size = vfs_read(lf->f, lf->buff, sizeof(lf->buff));

  return (*size > 0) ? lf->buff : ((void*)0);
}
