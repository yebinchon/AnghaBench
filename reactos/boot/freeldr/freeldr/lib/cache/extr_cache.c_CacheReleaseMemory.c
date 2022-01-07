
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {int BlockSize; int BytesPerSector; } ;
typedef scalar_t__ BOOLEAN ;


 int CacheInternalFreeBlock (TYPE_1__*) ;
 TYPE_1__ CacheManagerDrive ;
 scalar_t__ CacheManagerInitialized ;
 scalar_t__ FALSE ;
 int TRACE (char*,scalar_t__) ;

BOOLEAN CacheReleaseMemory(ULONG MinimumAmountToRelease)
{
    ULONG AmountReleased;

    TRACE("CacheReleaseMemory() MinimumAmountToRelease = %d\n", MinimumAmountToRelease);


    if (CacheManagerInitialized == FALSE)
    {
        return FALSE;
    }


    for (AmountReleased=0; AmountReleased<MinimumAmountToRelease; )
    {


        if (!CacheInternalFreeBlock(&CacheManagerDrive))
        {
            break;
        }


        AmountReleased += CacheManagerDrive.BlockSize * CacheManagerDrive.BytesPerSector;
    }


    return (AmountReleased >= MinimumAmountToRelease);
}
