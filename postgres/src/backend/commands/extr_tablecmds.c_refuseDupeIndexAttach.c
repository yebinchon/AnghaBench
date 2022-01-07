
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ OidIsValid (int ) ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ) ;
 int errmsg (char*,int ,int ) ;
 int index_get_partition (int ,int ) ;

__attribute__((used)) static void
refuseDupeIndexAttach(Relation parentIdx, Relation partIdx, Relation partitionTbl)
{
 Oid existingIdx;

 existingIdx = index_get_partition(partitionTbl,
           RelationGetRelid(parentIdx));
 if (OidIsValid(existingIdx))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot attach index \"%s\" as a partition of index \"%s\"",
      RelationGetRelationName(partIdx),
      RelationGetRelationName(parentIdx)),
     errdetail("Another index is already attached for partition \"%s\".",
         RelationGetRelationName(partitionTbl))));
}
