
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int List ;


 scalar_t__ InvalidOid ;
 scalar_t__ get_partition_parent_worker (int ,scalar_t__) ;
 int * lappend_oid (int *,scalar_t__) ;

__attribute__((used)) static void
get_partition_ancestors_worker(Relation inhRel, Oid relid, List **ancestors)
{
 Oid parentOid;


 parentOid = get_partition_parent_worker(inhRel, relid);
 if (parentOid == InvalidOid)
  return;

 *ancestors = lappend_oid(*ancestors, parentOid);
 get_partition_ancestors_worker(inhRel, parentOid, ancestors);
}
