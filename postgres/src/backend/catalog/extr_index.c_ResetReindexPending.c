
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NIL ;
 int pendingReindexedIndexes ;

__attribute__((used)) static void
ResetReindexPending(void)
{

 pendingReindexedIndexes = NIL;
}
