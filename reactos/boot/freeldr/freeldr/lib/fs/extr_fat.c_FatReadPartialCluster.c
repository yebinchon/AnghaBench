
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int SectorsPerCluster; int DataSectorStart; int BytesPerSector; } ;
typedef int PVOID ;
typedef int PUCHAR ;
typedef TYPE_1__* PFAT_VOLUME_INFO ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ FatReadVolumeSectors (TYPE_1__*,int,int,int) ;
 int FrLdrTempAlloc (int,int ) ;
 int FrLdrTempFree (int,int ) ;
 int TAG_FAT_BUFFER ;
 int TRUE ;
 int memcpy (int ,int,int) ;

BOOLEAN FatReadPartialCluster(PFAT_VOLUME_INFO Volume, ULONG ClusterNumber, ULONG StartingOffset, ULONG Length, PVOID Buffer)
{
    ULONG ClusterStartSector;
    ULONG SectorOffset, ReadSize, SectorCount;
    PUCHAR ReadBuffer;
    BOOLEAN Success = FALSE;



    ClusterStartSector = ((ClusterNumber - 2) * Volume->SectorsPerCluster) + Volume->DataSectorStart;


    SectorOffset = (StartingOffset / Volume->BytesPerSector);
    StartingOffset %= Volume->BytesPerSector;


    SectorCount = (StartingOffset + Length + Volume->BytesPerSector - 1) / Volume->BytesPerSector;


    ReadSize = SectorCount * Volume->BytesPerSector;

    ReadBuffer = FrLdrTempAlloc(ReadSize, TAG_FAT_BUFFER);
    if (!ReadBuffer)
    {
        return FALSE;
    }

    if (FatReadVolumeSectors(Volume, ClusterStartSector + SectorOffset, SectorCount, ReadBuffer))
    {
        memcpy(Buffer, ReadBuffer + StartingOffset, Length);
        Success = TRUE;
    }

    FrLdrTempFree(ReadBuffer, TAG_FAT_BUFFER);

    return Success;
}
