
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONGLONG ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_3__ {int SectorSize; scalar_t__ SectorOffset; scalar_t__ SectorNumber; int DriveNumber; } ;
typedef TYPE_1__ DISKCONTEXT ;
typedef int BOOLEAN ;
typedef int ARC_STATUS ;


 int ASSERT (int) ;
 int DiskReadBuffer ;
 int DiskReadBufferSize ;
 int EIO ;
 int ESUCCESS ;
 TYPE_1__* FsGetDeviceSpecific (int) ;
 int MachDiskReadLogicalSectors (int ,scalar_t__,int,int ) ;
 int RtlCopyMemory (int *,int ,int) ;
 int TRUE ;

__attribute__((used)) static ARC_STATUS
DiskRead(ULONG FileId, VOID* Buffer, ULONG N, ULONG* Count)
{
    DISKCONTEXT* Context = FsGetDeviceSpecific(FileId);
    UCHAR* Ptr = (UCHAR*)Buffer;
    ULONG Length, TotalSectors, MaxSectors, ReadSectors;
    ULONGLONG SectorOffset;
    BOOLEAN ret;

    ASSERT(DiskReadBufferSize > 0);

    TotalSectors = (N + Context->SectorSize - 1) / Context->SectorSize;
    MaxSectors = DiskReadBufferSize / Context->SectorSize;
    SectorOffset = Context->SectorOffset + Context->SectorNumber;



    ASSERT(MaxSectors > 0);

    ret = TRUE;

    while (TotalSectors)
    {
        ReadSectors = TotalSectors;
        if (ReadSectors > MaxSectors)
            ReadSectors = MaxSectors;

        ret = MachDiskReadLogicalSectors(Context->DriveNumber,
                                         SectorOffset,
                                         ReadSectors,
                                         DiskReadBuffer);
        if (!ret)
            break;

        Length = ReadSectors * Context->SectorSize;
        if (Length > N)
            Length = N;

        RtlCopyMemory(Ptr, DiskReadBuffer, Length);

        Ptr += Length;
        N -= Length;
        SectorOffset += ReadSectors;
        TotalSectors -= ReadSectors;
    }

    *Count = (ULONG)((ULONG_PTR)Ptr - (ULONG_PTR)Buffer);
    Context->SectorNumber = SectorOffset - Context->SectorOffset;

    return (!ret) ? EIO : ESUCCESS;
}
