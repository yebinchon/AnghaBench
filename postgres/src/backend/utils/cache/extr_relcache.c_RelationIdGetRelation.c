
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ rd_isnailed; scalar_t__ rd_isvalid; TYPE_1__* rd_rel; } ;
struct TYPE_10__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;


 int Assert (int) ;
 int IsTransactionState () ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 TYPE_2__* RelationBuildDesc (int ,int) ;
 int RelationClearRelation (TYPE_2__*,int) ;
 int RelationIdCacheLookup (int ,TYPE_2__*) ;
 int RelationIncrementReferenceCount (TYPE_2__*) ;
 scalar_t__ RelationIsValid (TYPE_2__*) ;
 int RelationReloadIndexInfo (TYPE_2__*) ;
 int criticalRelcachesBuilt ;

Relation
RelationIdGetRelation(Oid relationId)
{
 Relation rd;


 Assert(IsTransactionState());




 RelationIdCacheLookup(relationId, rd);

 if (RelationIsValid(rd))
 {
  RelationIncrementReferenceCount(rd);

  if (!rd->rd_isvalid)
  {





   if (rd->rd_rel->relkind == RELKIND_INDEX ||
    rd->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
    RelationReloadIndexInfo(rd);
   else
    RelationClearRelation(rd, 1);
   Assert(rd->rd_isvalid ||
       (rd->rd_isnailed && !criticalRelcachesBuilt));
  }
  return rd;
 }





 rd = RelationBuildDesc(relationId, 1);
 if (RelationIsValid(rd))
  RelationIncrementReferenceCount(rd);
 return rd;
}
