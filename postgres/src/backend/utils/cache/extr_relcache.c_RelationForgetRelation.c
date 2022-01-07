
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int ERROR ;
 int PointerIsValid (int ) ;
 int RelationClearRelation (int ,int) ;
 int RelationHasReferenceCountZero (int ) ;
 int RelationIdCacheLookup (int ,int ) ;
 int elog (int ,char*,int ) ;

void
RelationForgetRelation(Oid rid)
{
 Relation relation;

 RelationIdCacheLookup(rid, relation);

 if (!PointerIsValid(relation))
  return;

 if (!RelationHasReferenceCountZero(relation))
  elog(ERROR, "relation %u is still open", rid);


 RelationClearRelation(relation, 0);
}
