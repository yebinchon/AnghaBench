
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ OidIsValid (int ) ;
 int RemoveReindexPending (int ) ;
 int currentlyReindexedHeap ;
 int currentlyReindexedIndex ;
 int elog (int ,char*) ;

__attribute__((used)) static void
SetReindexProcessing(Oid heapOid, Oid indexOid)
{
 Assert(OidIsValid(heapOid) && OidIsValid(indexOid));

 if (OidIsValid(currentlyReindexedHeap))
  elog(ERROR, "cannot reindex while reindexing");
 currentlyReindexedHeap = heapOid;
 currentlyReindexedIndex = indexOid;

 RemoveReindexPending(indexOid);
}
