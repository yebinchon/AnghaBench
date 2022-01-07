
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERROR ;
 scalar_t__ IsInParallelMode () ;
 int elog (int ,char*) ;
 int list_delete_oid (int ,int ) ;
 int pendingReindexedIndexes ;

__attribute__((used)) static void
RemoveReindexPending(Oid indexOid)
{
 if (IsInParallelMode())
  elog(ERROR, "cannot modify reindex state during a parallel operation");
 pendingReindexedIndexes = list_delete_oid(pendingReindexedIndexes,
             indexOid);
}
