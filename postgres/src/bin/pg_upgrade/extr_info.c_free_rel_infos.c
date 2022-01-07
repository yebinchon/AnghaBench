
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* tablespace; scalar_t__ tblsp_alloc; struct TYPE_5__* relname; struct TYPE_5__* nspname; scalar_t__ nsp_alloc; } ;
struct TYPE_4__ {int nrels; TYPE_2__* rels; } ;
typedef TYPE_1__ RelInfoArr ;


 int pg_free (TYPE_2__*) ;

__attribute__((used)) static void
free_rel_infos(RelInfoArr *rel_arr)
{
 int relnum;

 for (relnum = 0; relnum < rel_arr->nrels; relnum++)
 {
  if (rel_arr->rels[relnum].nsp_alloc)
   pg_free(rel_arr->rels[relnum].nspname);
  pg_free(rel_arr->rels[relnum].relname);
  if (rel_arr->rels[relnum].tblsp_alloc)
   pg_free(rel_arr->rels[relnum].tablespace);
 }
 pg_free(rel_arr->rels);
 rel_arr->nrels = 0;
}
