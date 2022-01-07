
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t gl_pathc; struct TYPE_4__* gl_pathv; struct TYPE_4__* path; } ;
typedef TYPE_1__ os_glob_t ;


 int bfree (TYPE_1__*) ;

void os_globfree(os_glob_t *pglob)
{
 if (pglob) {
  for (size_t i = 0; i < pglob->gl_pathc; i++)
   bfree(pglob->gl_pathv[i].path);
  bfree(pglob->gl_pathv);
  bfree(pglob);
 }
}
