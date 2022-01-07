
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_7__ {int SectorsPerFatBig; } ;
struct TYPE_6__ {int SectorsPerCluster; int FileSystemType; } ;
struct TYPE_5__ {int NumberOfFats; int SectorsPerCluster; int ReservedSectors; int TotalSectorsBig; int TotalSectors; int SectorsPerFat; int BytesPerSector; int RootDirEntries; } ;
typedef TYPE_1__* PFAT_BOOTSECTOR ;
typedef TYPE_2__* PFATX_BOOTSECTOR ;
typedef TYPE_3__* PFAT32_BOOTSECTOR ;


 int FAT12 ;
 int FAT16 ;
 int FAT32 ;
 int FATX16 ;
 int FATX32 ;
 int SWAPD (int ) ;
 int SWAPW (int ) ;
 scalar_t__ strncmp (int ,char*,int) ;

ULONG FatDetermineFatType(PFAT_BOOTSECTOR FatBootSector, ULONGLONG PartitionSectorCount)
{
    ULONG RootDirSectors;
    ULONG DataSectorCount;
    ULONG SectorsPerFat;
    ULONG TotalSectors;
    ULONG CountOfClusters;
    PFAT32_BOOTSECTOR Fat32BootSector = (PFAT32_BOOTSECTOR)FatBootSector;
    PFATX_BOOTSECTOR FatXBootSector = (PFATX_BOOTSECTOR)FatBootSector;

    if (0 == strncmp(FatXBootSector->FileSystemType, "FATX", 4))
    {
        CountOfClusters = (ULONG)(PartitionSectorCount / FatXBootSector->SectorsPerCluster);
        if (CountOfClusters < 65525)
        {

            return FATX16;
        }
        else
        {

            return FATX32;
        }
    }
    else
    {
        RootDirSectors = ((SWAPW(FatBootSector->RootDirEntries) * 32) + (SWAPW(FatBootSector->BytesPerSector) - 1)) / SWAPW(FatBootSector->BytesPerSector);
        SectorsPerFat = SWAPW(FatBootSector->SectorsPerFat) ? SWAPW(FatBootSector->SectorsPerFat) : SWAPD(Fat32BootSector->SectorsPerFatBig);
        TotalSectors = SWAPW(FatBootSector->TotalSectors) ? SWAPW(FatBootSector->TotalSectors) : SWAPD(FatBootSector->TotalSectorsBig);
        DataSectorCount = TotalSectors - (SWAPW(FatBootSector->ReservedSectors) + (FatBootSector->NumberOfFats * SectorsPerFat) + RootDirSectors);


        if (FatBootSector->SectorsPerCluster == 0)
            CountOfClusters = 0;
        else
            CountOfClusters = DataSectorCount / FatBootSector->SectorsPerCluster;

        if (CountOfClusters < 4085)
        {

            return FAT12;
        }
        else if (CountOfClusters < 65525)
        {

            return FAT16;
        }
        else
        {

            return FAT32;
        }
    }
}
