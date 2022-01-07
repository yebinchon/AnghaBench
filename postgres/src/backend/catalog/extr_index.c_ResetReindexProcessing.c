
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* InvalidOid ;
 void* currentlyReindexedHeap ;
 void* currentlyReindexedIndex ;

__attribute__((used)) static void
ResetReindexProcessing(void)
{

 currentlyReindexedHeap = InvalidOid;
 currentlyReindexedIndex = InvalidOid;
}
