#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT8 ;
typedef  size_t UINT32 ;
struct TYPE_4__ {size_t ActiveFatSectorStart; size_t FatCacheSize; size_t SectorsPerFat; size_t* FatCacheIndex; size_t BytesPerSector; int /*<<< orphan*/ * FatCache; } ;
typedef  int /*<<< orphan*/ * PUCHAR ;
typedef  TYPE_1__* PFAT_VOLUME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int FUNC3 (size_t,int) ; 

__attribute__((used)) static
PUCHAR FUNC4(PFAT_VOLUME_INFO Volume, UINT32 FatSectorNumber)
{
    UINT32 SectorNumAbsolute = Volume->ActiveFatSectorStart + FatSectorNumber;
    UINT32 CacheIndex = FatSectorNumber % Volume->FatCacheSize;

    FUNC0(FatSectorNumber < Volume->SectorsPerFat);

    // cache miss
    if (Volume->FatCacheIndex[CacheIndex] != SectorNumAbsolute)
    {
        UINT32 SectorsToRead = FUNC3(Volume->FatCacheSize - CacheIndex, FUNC3(Volume->SectorsPerFat - SectorNumAbsolute, 4));
        UINT8 i;

        if (!FUNC1(Volume, SectorNumAbsolute, SectorsToRead, &Volume->FatCache[CacheIndex * Volume->BytesPerSector]))
        {
            return NULL;
        }

        for (i = 0; i < SectorsToRead; i++)
        {
            Volume->FatCacheIndex[CacheIndex + i] = SectorNumAbsolute + i; 
        }

        FUNC2("FAT cache miss: read sector 0x%x from disk\n", SectorNumAbsolute);
    }
    else
    {
        FUNC2("FAT cache hit: sector 0x%x present\n", SectorNumAbsolute);
    }

    return &Volume->FatCache[CacheIndex * Volume->BytesPerSector];
}