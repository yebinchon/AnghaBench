
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ currentlyReindexedIndex ;

__attribute__((used)) static bool
ReindexIsCurrentlyProcessingIndex(Oid indexOid)
{
 return indexOid == currentlyReindexedIndex;
}
