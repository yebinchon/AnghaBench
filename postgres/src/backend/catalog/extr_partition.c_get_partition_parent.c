
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int ERROR ;
 int InheritsRelationId ;
 int OidIsValid (int ) ;
 int elog (int ,char*,int ) ;
 int get_partition_parent_worker (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
get_partition_parent(Oid relid)
{
 Relation catalogRelation;
 Oid result;

 catalogRelation = table_open(InheritsRelationId, AccessShareLock);

 result = get_partition_parent_worker(catalogRelation, relid);

 if (!OidIsValid(result))
  elog(ERROR, "could not find tuple for parent of relation %u", relid);

 table_close(catalogRelation, AccessShareLock);

 return result;
}
