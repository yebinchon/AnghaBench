
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ currentlyReindexedIndex ;
 scalar_t__ list_member_oid (int ,scalar_t__) ;
 int pendingReindexedIndexes ;

bool
ReindexIsProcessingIndex(Oid indexOid)
{
 return indexOid == currentlyReindexedIndex ||
  list_member_oid(pendingReindexedIndexes, indexOid);
}
