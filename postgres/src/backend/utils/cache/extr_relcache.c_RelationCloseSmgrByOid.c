
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int PointerIsValid (int ) ;
 int RelationCloseSmgr (int ) ;
 int RelationIdCacheLookup (int ,int ) ;

void
RelationCloseSmgrByOid(Oid relationId)
{
 Relation relation;

 RelationIdCacheLookup(relationId, relation);

 if (!PointerIsValid(relation))
  return;

 RelationCloseSmgr(relation);
}
