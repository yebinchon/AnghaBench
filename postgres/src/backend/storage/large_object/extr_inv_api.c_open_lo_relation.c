
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ResourceOwner ;


 int CurrentResourceOwner ;
 int LargeObjectLOidPNIndexId ;
 int LargeObjectRelationId ;
 int RowExclusiveLock ;
 int TopTransactionResourceOwner ;
 int * index_open (int ,int ) ;
 int * lo_heap_r ;
 int * lo_index_r ;
 int * table_open (int ,int ) ;

__attribute__((used)) static void
open_lo_relation(void)
{
 ResourceOwner currentOwner;

 if (lo_heap_r && lo_index_r)
  return;


 currentOwner = CurrentResourceOwner;
 CurrentResourceOwner = TopTransactionResourceOwner;


 if (lo_heap_r == ((void*)0))
  lo_heap_r = table_open(LargeObjectRelationId, RowExclusiveLock);
 if (lo_index_r == ((void*)0))
  lo_index_r = index_open(LargeObjectLOidPNIndexId, RowExclusiveLock);

 CurrentResourceOwner = currentOwner;
}
