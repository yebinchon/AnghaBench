
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int ERROR ;
 scalar_t__ IsInParallelMode () ;
 int elog (int ,char*) ;
 scalar_t__ list_copy (int *) ;
 scalar_t__ pendingReindexedIndexes ;

__attribute__((used)) static void
SetReindexPending(List *indexes)
{

 if (pendingReindexedIndexes)
  elog(ERROR, "cannot reindex while reindexing");
 if (IsInParallelMode())
  elog(ERROR, "cannot modify reindex state during a parallel operation");
 pendingReindexedIndexes = list_copy(indexes);
}
