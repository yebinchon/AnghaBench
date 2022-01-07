
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_10__ {int DriveNumber; int BytesPerSector; int BlockSize; int CacheBlockHead; } ;
struct TYPE_9__ {int BytesPerSector; } ;
struct TYPE_8__ {struct TYPE_8__* BlockData; } ;
typedef TYPE_1__* PCACHE_BLOCK ;
typedef TYPE_2__ GEOMETRY ;
typedef int CACHE_DRIVE ;
typedef void* BOOLEAN ;


 int CACHE_BLOCK ;
 TYPE_1__* CONTAINING_RECORD (int ,int ,int ) ;
 int CacheBlockCount ;
 void* CacheManagerDataInvalid ;
 TYPE_3__ CacheManagerDrive ;
 void* CacheManagerInitialized ;
 int CacheSizeCurrent ;
 int CacheSizeLimit ;
 void* FALSE ;
 int FrLdrTempFree (TYPE_1__*,int ) ;
 int InitializeListHead (int *) ;
 int IsListEmpty (int *) ;
 int ListEntry ;
 int MM_PAGE_SIZE ;
 int MachDiskGetCacheableBlockCount (int) ;
 int MachDiskGetDriveGeometry (int,TYPE_2__*) ;
 int RemoveHeadList (int *) ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int TAG_CACHE_BLOCK ;
 int TAG_CACHE_DATA ;
 scalar_t__ TEMP_HEAP_SIZE ;
 int TRACE (char*,int) ;
 void* TRUE ;
 int TotalPagesInLookupTable ;
 int min (int,scalar_t__) ;

BOOLEAN CacheInitializeDrive(UCHAR DriveNumber)
{
    PCACHE_BLOCK NextCacheBlock;
    GEOMETRY DriveGeometry;




    if ((CacheManagerInitialized) &&
        (DriveNumber == CacheManagerDrive.DriveNumber) &&
        (DriveNumber >= 0x80) &&
        (!CacheManagerDataInvalid))
    {
        return TRUE;
    }

    CacheManagerDataInvalid = FALSE;





    if (CacheManagerInitialized)
    {
        CacheManagerInitialized = FALSE;

        TRACE("CacheBlockCount: %d\n", CacheBlockCount);
        TRACE("CacheSizeLimit: %d\n", CacheSizeLimit);
        TRACE("CacheSizeCurrent: %d\n", CacheSizeCurrent);



        while (!IsListEmpty(&CacheManagerDrive.CacheBlockHead))
        {
            NextCacheBlock = CONTAINING_RECORD(RemoveHeadList(&CacheManagerDrive.CacheBlockHead),
                                               CACHE_BLOCK,
                                               ListEntry);

            FrLdrTempFree(NextCacheBlock->BlockData, TAG_CACHE_DATA);
            FrLdrTempFree(NextCacheBlock, TAG_CACHE_BLOCK);
        }
    }


    RtlZeroMemory(&CacheManagerDrive, sizeof(CACHE_DRIVE));
    InitializeListHead(&CacheManagerDrive.CacheBlockHead);
    CacheManagerDrive.DriveNumber = DriveNumber;
    if (!MachDiskGetDriveGeometry(DriveNumber, &DriveGeometry))
    {
        return FALSE;
    }
    CacheManagerDrive.BytesPerSector = DriveGeometry.BytesPerSector;


    CacheManagerDrive.BlockSize = MachDiskGetCacheableBlockCount(DriveNumber);

    CacheBlockCount = 0;
    CacheSizeCurrent = 0;
    CacheSizeLimit = TotalPagesInLookupTable / 8 * MM_PAGE_SIZE;
    CacheSizeLimit = min(CacheSizeLimit, TEMP_HEAP_SIZE - (128 * 1024));

    CacheManagerInitialized = TRUE;

    TRACE("Initializing BIOS drive 0x%x.\n", DriveNumber);
    TRACE("BytesPerSector: %d.\n", CacheManagerDrive.BytesPerSector);
    TRACE("BlockSize: %d.\n", CacheManagerDrive.BlockSize);
    TRACE("CacheSizeLimit: %d.\n", CacheSizeLimit);

    return TRUE;
}
