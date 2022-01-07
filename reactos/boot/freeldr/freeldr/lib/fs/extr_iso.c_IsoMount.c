
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_6__ {int LowPart; scalar_t__ HighPart; } ;
struct TYPE_5__ {int VdType; int StandardId; } ;
typedef int PVD ;
typedef TYPE_1__* PPVD ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int DEVVTBL ;
typedef scalar_t__ ARC_STATUS ;


 scalar_t__ ArcRead (int,TYPE_1__*,int,int*) ;
 scalar_t__ ArcSeek (int,TYPE_2__*,int ) ;
 scalar_t__ ESUCCESS ;
 int const Iso9660FuncTable ;
 scalar_t__ RtlEqualMemory (int ,char*,int) ;
 int SECTORSIZE ;
 int SeekAbsolute ;
 int TRACE (char*,int) ;

const DEVVTBL* IsoMount(ULONG DeviceId)
{
    UCHAR Buffer[SECTORSIZE];
    PPVD Pvd = (PPVD)Buffer;
    LARGE_INTEGER Position;
    ULONG Count;
    ARC_STATUS Status;

    TRACE("Enter IsoMount(%lu)\n", DeviceId);




    Position.HighPart = 0;
    Position.LowPart = 16 * SECTORSIZE;
    Status = ArcSeek(DeviceId, &Position, SeekAbsolute);
    if (Status != ESUCCESS)
        return ((void*)0);
    Status = ArcRead(DeviceId, Pvd, SECTORSIZE, &Count);
    if (Status != ESUCCESS || Count < sizeof(PVD))
        return ((void*)0);




    if (Pvd->VdType == 1 && RtlEqualMemory(Pvd->StandardId, "CD001", 5))
    {
        TRACE("IsoMount(%lu) success\n", DeviceId);
        return &Iso9660FuncTable;
    }

    return ((void*)0);
}
