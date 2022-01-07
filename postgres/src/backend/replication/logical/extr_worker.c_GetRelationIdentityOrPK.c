
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int OidIsValid (int ) ;
 int RelationGetPrimaryKeyIndex (int ) ;
 int RelationGetReplicaIndex (int ) ;

__attribute__((used)) static Oid
GetRelationIdentityOrPK(Relation rel)
{
 Oid idxoid;

 idxoid = RelationGetReplicaIndex(rel);

 if (!OidIsValid(idxoid))
  idxoid = RelationGetPrimaryKeyIndex(rel);

 return idxoid;
}
