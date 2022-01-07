
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
typedef int ULONG ;
typedef int UINT32 ;
struct TYPE_4__ {int FatType; int BytesPerSector; } ;
typedef int* PUINT32 ;
typedef int PUCHAR ;
typedef TYPE_1__* PFAT_VOLUME_INFO ;
typedef int BOOLEAN ;


 int ERR (char*,int) ;
 int FALSE ;





 int FatGetFatSector (TYPE_1__*,int) ;
 int SWAPD (int) ;
 int SWAPW (int) ;
 int TRACE (char*,int) ;
 int TRUE ;

__attribute__((used)) static
BOOLEAN FatGetFatEntry(PFAT_VOLUME_INFO Volume, UINT32 Cluster, PUINT32 ClusterPointer)
{
    UINT32 FatOffset, ThisFatSecNum, ThisFatEntOffset, fat;
    PUCHAR ReadBuffer;

    TRACE("FatGetFatEntry() Retrieving FAT entry for cluster %d.\n", Cluster);

    switch(Volume->FatType)
    {
    case 132:

        FatOffset = Cluster + (Cluster / 2);
        ThisFatSecNum = FatOffset / Volume->BytesPerSector;
        ThisFatEntOffset = (FatOffset % Volume->BytesPerSector);

        TRACE("FatOffset: %d\n", FatOffset);
        TRACE("ThisFatSecNum: %d\n", ThisFatSecNum);
        TRACE("ThisFatEntOffset: %d\n", ThisFatEntOffset);







        ReadBuffer = FatGetFatSector(Volume, ThisFatSecNum);
        if (!ReadBuffer)
        {
            return FALSE;
        }

        fat = *((USHORT *) (ReadBuffer + ThisFatEntOffset));
        fat = SWAPW(fat);
        if (Cluster & 0x0001)
            fat = fat >> 4;
        else
            fat = fat & 0x0FFF;

        break;

    case 131:
    case 129:

        FatOffset = (Cluster * 2);
        ThisFatSecNum = FatOffset / Volume->BytesPerSector;
        ThisFatEntOffset = (FatOffset % Volume->BytesPerSector);

        ReadBuffer = FatGetFatSector(Volume, ThisFatSecNum);
        if (!ReadBuffer)
        {
            return FALSE;
        }

        fat = *((USHORT *) (ReadBuffer + ThisFatEntOffset));
        fat = SWAPW(fat);

        break;

    case 130:
    case 128:

        FatOffset = (Cluster * 4);
        ThisFatSecNum = FatOffset / Volume->BytesPerSector;
        ThisFatEntOffset = (FatOffset % Volume->BytesPerSector);

        ReadBuffer = FatGetFatSector(Volume, ThisFatSecNum);
        if (!ReadBuffer)
        {
            return FALSE;
        }


        fat = (*((ULONG *) (ReadBuffer + ThisFatEntOffset))) & 0x0FFFFFFF;
        fat = SWAPD(fat);

        break;

    default:
        ERR("Unknown FAT type %d\n", Volume->FatType);
        return FALSE;
    }

    TRACE("FAT entry is 0x%x.\n", fat);

    *ClusterPointer = fat;

    return TRUE;
}
