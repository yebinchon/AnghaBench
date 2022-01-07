
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int List ;


 int AccessShareLock ;
 int InheritsRelationId ;
 int * NIL ;
 int get_partition_ancestors_worker (int ,int ,int **) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

List *
get_partition_ancestors(Oid relid)
{
 List *result = NIL;
 Relation inhRel;

 inhRel = table_open(InheritsRelationId, AccessShareLock);

 get_partition_ancestors_worker(inhRel, relid, &result);

 table_close(inhRel, AccessShareLock);

 return result;
}
