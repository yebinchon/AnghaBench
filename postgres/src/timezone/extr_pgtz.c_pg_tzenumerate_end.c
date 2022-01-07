
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t depth; struct TYPE_4__** dirname; int * dirdesc; } ;
typedef TYPE_1__ pg_tzenum ;


 int FreeDir (int ) ;
 int pfree (TYPE_1__*) ;

void
pg_tzenumerate_end(pg_tzenum *dir)
{
 while (dir->depth >= 0)
 {
  FreeDir(dir->dirdesc[dir->depth]);
  pfree(dir->dirname[dir->depth]);
  dir->depth--;
 }
 pfree(dir);
}
