
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 scalar_t__ PointerIsValid (int ) ;
 int RelationFlushRelation (int ) ;
 int RelationIdCacheLookup (int ,int ) ;
 int relcacheInvalsReceived ;

void
RelationCacheInvalidateEntry(Oid relationId)
{
 Relation relation;

 RelationIdCacheLookup(relationId, relation);

 if (PointerIsValid(relation))
 {
  relcacheInvalsReceived++;
  RelationFlushRelation(relation);
 }
}
