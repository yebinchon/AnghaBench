
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ tdrefcount; } ;
struct TYPE_10__ {scalar_t__ rd_partcheckcxt; scalar_t__ rd_pdcxt; scalar_t__ rd_partkeycxt; TYPE_1__* rd_rsdesc; scalar_t__ rd_rulescxt; scalar_t__ rd_indexcxt; struct TYPE_10__* rd_fdwroutine; struct TYPE_10__* rd_amcache; struct TYPE_10__* rd_indextuple; struct TYPE_10__* rd_options; struct TYPE_10__* rd_pubactions; int rd_idattr; int rd_pkattr; int rd_keyattr; int rd_indexattr; int rd_indexlist; int rd_fkeylist; int trigdesc; TYPE_4__* rd_att; struct TYPE_10__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ rscxt; } ;
typedef TYPE_2__* Relation ;


 int Assert (int) ;
 int FreeTriggerDesc (int ) ;
 int FreeTupleDesc (TYPE_4__*) ;
 int MemoryContextDelete (scalar_t__) ;
 int RelationCloseSmgr (TYPE_2__*) ;
 int RelationHasReferenceCountZero (TYPE_2__*) ;
 int RememberToFreeTupleDescAtEOX (TYPE_4__*) ;
 int bms_free (int ) ;
 int list_free (int ) ;
 int list_free_deep (int ) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
RelationDestroyRelation(Relation relation, bool remember_tupdesc)
{
 Assert(RelationHasReferenceCountZero(relation));






 RelationCloseSmgr(relation);





 if (relation->rd_rel)
  pfree(relation->rd_rel);

 Assert(relation->rd_att->tdrefcount > 0);
 if (--relation->rd_att->tdrefcount == 0)
 {
  if (remember_tupdesc)
   RememberToFreeTupleDescAtEOX(relation->rd_att);
  else
   FreeTupleDesc(relation->rd_att);
 }
 FreeTriggerDesc(relation->trigdesc);
 list_free_deep(relation->rd_fkeylist);
 list_free(relation->rd_indexlist);
 bms_free(relation->rd_indexattr);
 bms_free(relation->rd_keyattr);
 bms_free(relation->rd_pkattr);
 bms_free(relation->rd_idattr);
 if (relation->rd_pubactions)
  pfree(relation->rd_pubactions);
 if (relation->rd_options)
  pfree(relation->rd_options);
 if (relation->rd_indextuple)
  pfree(relation->rd_indextuple);
 if (relation->rd_amcache)
  pfree(relation->rd_amcache);
 if (relation->rd_fdwroutine)
  pfree(relation->rd_fdwroutine);
 if (relation->rd_indexcxt)
  MemoryContextDelete(relation->rd_indexcxt);
 if (relation->rd_rulescxt)
  MemoryContextDelete(relation->rd_rulescxt);
 if (relation->rd_rsdesc)
  MemoryContextDelete(relation->rd_rsdesc->rscxt);
 if (relation->rd_partkeycxt)
  MemoryContextDelete(relation->rd_partkeycxt);
 if (relation->rd_pdcxt)
  MemoryContextDelete(relation->rd_pdcxt);
 if (relation->rd_partcheckcxt)
  MemoryContextDelete(relation->rd_partcheckcxt);
 pfree(relation);
}
