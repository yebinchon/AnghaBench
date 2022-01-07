
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_6__ {int QuadPart; } ;
struct TYPE_5__ {int DeviceId; } ;
typedef int PVOID ;
typedef TYPE_1__* PFAT_VOLUME_INFO ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int BOOLEAN ;
typedef scalar_t__ ARC_STATUS ;


 scalar_t__ ArcRead (int ,int ,int,int*) ;
 scalar_t__ ArcSeek (int ,TYPE_2__*,int ) ;
 scalar_t__ ESUCCESS ;
 int FALSE ;
 int SeekAbsolute ;
 int TRACE (char*) ;
 int TRUE ;

BOOLEAN FatReadVolumeSectors(PFAT_VOLUME_INFO Volume, ULONG SectorNumber, ULONG SectorCount, PVOID Buffer)
{
    LARGE_INTEGER Position;
    ULONG Count;
    ARC_STATUS Status;







    Position.QuadPart = (ULONGLONG)SectorNumber * 512;
    Status = ArcSeek(Volume->DeviceId, &Position, SeekAbsolute);
    if (Status != ESUCCESS)
    {
        TRACE("FatReadVolumeSectors() Failed to seek\n");
        return FALSE;
    }




    Status = ArcRead(Volume->DeviceId, Buffer, SectorCount * 512, &Count);
    if (Status != ESUCCESS || Count != SectorCount * 512)
    {
        TRACE("FatReadVolumeSectors() Failed to read\n");
        return FALSE;
    }


    return TRUE;
}
