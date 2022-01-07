
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONGLONG ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
struct TYPE_6__ {scalar_t__ BlockSize; scalar_t__ BytesPerSector; } ;
struct TYPE_5__ {scalar_t__ BlockData; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PCACHE_BLOCK ;
typedef scalar_t__ BOOLEAN ;


 TYPE_1__* CacheInternalGetBlockPointer (TYPE_2__*,scalar_t__) ;
 TYPE_2__ CacheManagerDrive ;
 scalar_t__ CacheManagerInitialized ;
 scalar_t__ FALSE ;
 int RtlCopyMemory (scalar_t__,scalar_t__,scalar_t__) ;
 int TRACE (char*,scalar_t__,scalar_t__,scalar_t__,...) ;
 scalar_t__ TRUE ;

BOOLEAN CacheReadDiskSectors(UCHAR DiskNumber, ULONGLONG StartSector, ULONG SectorCount, PVOID Buffer)
{
    PCACHE_BLOCK CacheBlock;
    ULONG StartBlock;
    ULONG SectorOffsetInStartBlock;
    ULONG CopyLengthInStartBlock;
    ULONG EndBlock;
    ULONG SectorOffsetInEndBlock;
    ULONG BlockCount;
    ULONG Idx;

    TRACE("CacheReadDiskSectors() DiskNumber: 0x%x StartSector: %I64d SectorCount: %d Buffer: 0x%x\n", DiskNumber, StartSector, SectorCount, Buffer);


    if (CacheManagerInitialized == FALSE)
    {
        return FALSE;
    }




    StartBlock = (ULONG)(StartSector / CacheManagerDrive.BlockSize);
    SectorOffsetInStartBlock = (ULONG)(StartSector % CacheManagerDrive.BlockSize);
    CopyLengthInStartBlock = (ULONG)((SectorCount > (CacheManagerDrive.BlockSize - SectorOffsetInStartBlock)) ? (CacheManagerDrive.BlockSize - SectorOffsetInStartBlock) : SectorCount);
    EndBlock = (ULONG)((StartSector + (SectorCount - 1)) / CacheManagerDrive.BlockSize);
    SectorOffsetInEndBlock = (ULONG)(1 + (StartSector + (SectorCount - 1)) % CacheManagerDrive.BlockSize);
    BlockCount = (EndBlock - StartBlock) + 1;
    TRACE("StartBlock: %d SectorOffsetInStartBlock: %d CopyLengthInStartBlock: %d EndBlock: %d SectorOffsetInEndBlock: %d BlockCount: %d\n", StartBlock, SectorOffsetInStartBlock, CopyLengthInStartBlock, EndBlock, SectorOffsetInEndBlock, BlockCount);




    if (BlockCount > 0)
    {



        CacheBlock = CacheInternalGetBlockPointer(&CacheManagerDrive, StartBlock);
        if (CacheBlock == ((void*)0))
        {
            return FALSE;
        }




        RtlCopyMemory(Buffer,
            (PVOID)((ULONG_PTR)CacheBlock->BlockData + (SectorOffsetInStartBlock * CacheManagerDrive.BytesPerSector)),
            (CopyLengthInStartBlock * CacheManagerDrive.BytesPerSector));
        TRACE("1 - RtlCopyMemory(0x%x, 0x%x, %d)\n", Buffer, ((ULONG_PTR)CacheBlock->BlockData + (SectorOffsetInStartBlock * CacheManagerDrive.BytesPerSector)), (CopyLengthInStartBlock * CacheManagerDrive.BytesPerSector));




        Buffer = (PVOID)((ULONG_PTR)Buffer + (CopyLengthInStartBlock * CacheManagerDrive.BytesPerSector));




        BlockCount--;
    }




    for (Idx=StartBlock+1; BlockCount>1; Idx++)
    {



        CacheBlock = CacheInternalGetBlockPointer(&CacheManagerDrive, Idx);
        if (CacheBlock == ((void*)0))
        {
            return FALSE;
        }




        RtlCopyMemory(Buffer,
            CacheBlock->BlockData,
            CacheManagerDrive.BlockSize * CacheManagerDrive.BytesPerSector);
        TRACE("2 - RtlCopyMemory(0x%x, 0x%x, %d)\n", Buffer, CacheBlock->BlockData, CacheManagerDrive.BlockSize * CacheManagerDrive.BytesPerSector);




        Buffer = (PVOID)((ULONG_PTR)Buffer + (CacheManagerDrive.BlockSize * CacheManagerDrive.BytesPerSector));




        BlockCount--;
    }




    if (BlockCount > 0)
    {



        CacheBlock = CacheInternalGetBlockPointer(&CacheManagerDrive, EndBlock);
        if (CacheBlock == ((void*)0))
        {
            return FALSE;
        }




        RtlCopyMemory(Buffer,
            CacheBlock->BlockData,
            SectorOffsetInEndBlock * CacheManagerDrive.BytesPerSector);
        TRACE("3 - RtlCopyMemory(0x%x, 0x%x, %d)\n", Buffer, CacheBlock->BlockData, SectorOffsetInEndBlock * CacheManagerDrive.BytesPerSector);




        Buffer = (PVOID)((ULONG_PTR)Buffer + (SectorOffsetInEndBlock * CacheManagerDrive.BytesPerSector));




        BlockCount--;
    }

    return TRUE;
}
