
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct posix_glob_info* gl_pathv; } ;
struct posix_glob_info {TYPE_1__ base; int gl; } ;
typedef int os_glob_t ;


 int bfree (struct posix_glob_info*) ;
 int globfree (int *) ;

void os_globfree(os_glob_t *pglob)
{
 if (pglob) {
  struct posix_glob_info *pgi = (struct posix_glob_info *)pglob;
  globfree(&pgi->gl);

  bfree(pgi->base.gl_pathv);
  bfree(pgi);
 }
}
