
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT8 ;
typedef size_t UINT32 ;
struct TYPE_4__ {size_t ActiveFatSectorStart; size_t FatCacheSize; size_t SectorsPerFat; size_t* FatCacheIndex; size_t BytesPerSector; int * FatCache; } ;
typedef int * PUCHAR ;
typedef TYPE_1__* PFAT_VOLUME_INFO ;


 int ASSERT (int) ;
 int FatReadVolumeSectors (TYPE_1__*,size_t,size_t,int *) ;
 int TRACE (char*,size_t) ;
 int min (size_t,int) ;

__attribute__((used)) static
PUCHAR FatGetFatSector(PFAT_VOLUME_INFO Volume, UINT32 FatSectorNumber)
{
    UINT32 SectorNumAbsolute = Volume->ActiveFatSectorStart + FatSectorNumber;
    UINT32 CacheIndex = FatSectorNumber % Volume->FatCacheSize;

    ASSERT(FatSectorNumber < Volume->SectorsPerFat);


    if (Volume->FatCacheIndex[CacheIndex] != SectorNumAbsolute)
    {
        UINT32 SectorsToRead = min(Volume->FatCacheSize - CacheIndex, min(Volume->SectorsPerFat - SectorNumAbsolute, 4));
        UINT8 i;

        if (!FatReadVolumeSectors(Volume, SectorNumAbsolute, SectorsToRead, &Volume->FatCache[CacheIndex * Volume->BytesPerSector]))
        {
            return ((void*)0);
        }

        for (i = 0; i < SectorsToRead; i++)
        {
            Volume->FatCacheIndex[CacheIndex + i] = SectorNumAbsolute + i;
        }

        TRACE("FAT cache miss: read sector 0x%x from disk\n", SectorNumAbsolute);
    }
    else
    {
        TRACE("FAT cache hit: sector 0x%x present\n", SectorNumAbsolute);
    }

    return &Volume->FatCache[CacheIndex * Volume->BytesPerSector];
}
