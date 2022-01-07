
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ResourceOwner ;


 int CurrentResourceOwner ;
 int NoLock ;
 int TopTransactionResourceOwner ;
 int index_close (int *,int ) ;
 int * lo_heap_r ;
 int * lo_index_r ;
 int table_close (int *,int ) ;

void
close_lo_relation(bool isCommit)
{
 if (lo_heap_r || lo_index_r)
 {




  if (isCommit)
  {
   ResourceOwner currentOwner;

   currentOwner = CurrentResourceOwner;
   CurrentResourceOwner = TopTransactionResourceOwner;

   if (lo_index_r)
    index_close(lo_index_r, NoLock);
   if (lo_heap_r)
    table_close(lo_heap_r, NoLock);

   CurrentResourceOwner = currentOwner;
  }
  lo_heap_r = ((void*)0);
  lo_index_r = ((void*)0);
 }
}
