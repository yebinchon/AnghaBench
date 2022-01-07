
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PBL_BLOCK_DESCRIPTOR ;


 int BlTblFindEntry (int ,int ,int *,int ,int ,int *,int *,int *) ;
 int MmBapCompareBlockAllocatorTableEntry ;
 int MmBlockAllocatorTable ;
 int MmBlockAllocatorTableEntries ;
 int UlongToPtr (int ) ;

PBL_BLOCK_DESCRIPTOR
MmBapFindBlockInformation (
    ULONG BlockId
    )
{
    ULONG EntryId;


    EntryId = BlockId;
    return BlTblFindEntry(MmBlockAllocatorTable,
                          MmBlockAllocatorTableEntries,
                          &EntryId,
                          MmBapCompareBlockAllocatorTableEntry,
                          UlongToPtr(EntryId),
                          ((void*)0),
                          ((void*)0),
                          ((void*)0));
}
