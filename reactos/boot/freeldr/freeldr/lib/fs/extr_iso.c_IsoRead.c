
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
struct TYPE_6__ {scalar_t__ LowPart; scalar_t__ HighPart; } ;
struct TYPE_5__ {int FilePointer; int FileSize; int FileStart; } ;
typedef int * PVOID ;
typedef TYPE_1__* PISO_FILE_INFO ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef scalar_t__ ARC_STATUS ;


 scalar_t__ ArcRead (scalar_t__,int *,int,scalar_t__*) ;
 scalar_t__ ArcSeek (scalar_t__,TYPE_2__*,int ) ;
 scalar_t__ EIO ;
 scalar_t__ ESUCCESS ;
 scalar_t__ FsGetDeviceId (scalar_t__) ;
 TYPE_1__* FsGetDeviceSpecific (scalar_t__) ;
 int RtlCopyMemory (int *,int *,scalar_t__) ;
 int SECTORSIZE ;
 int SeekAbsolute ;
 int TRACE (char*,...) ;
 scalar_t__ min (scalar_t__,int) ;

ARC_STATUS IsoRead(ULONG FileId, VOID* Buffer, ULONG N, ULONG* Count)
{
    ARC_STATUS Status;
    PISO_FILE_INFO FileHandle = FsGetDeviceSpecific(FileId);
    UCHAR SectorBuffer[SECTORSIZE];
    LARGE_INTEGER Position;
    ULONG DeviceId;
    ULONG SectorNumber;
    ULONG OffsetInSector;
    ULONG LengthInSector;
    ULONG NumberOfSectors;
    ULONG BytesRead;

    TRACE("IsoRead() Buffer = %p, N = %lu\n", Buffer, N);

    DeviceId = FsGetDeviceId(FileId);
    *Count = 0;





    if (FileHandle->FilePointer >= FileHandle->FileSize)
    {
        return ESUCCESS;
    }





    if (FileHandle->FilePointer + N > FileHandle->FileSize)
    {
        N = FileHandle->FileSize - FileHandle->FilePointer;
    }
    if (FileHandle->FilePointer % SECTORSIZE)
    {



        SectorNumber = FileHandle->FileStart + (FileHandle->FilePointer / SECTORSIZE);
        OffsetInSector = FileHandle->FilePointer % SECTORSIZE;
        LengthInSector = min(N, SECTORSIZE - OffsetInSector);




        Position.HighPart = 0;
        Position.LowPart = SectorNumber * SECTORSIZE;
        Status = ArcSeek(DeviceId, &Position, SeekAbsolute);
        if (Status != ESUCCESS)
        {
            return Status;
        }
        Status = ArcRead(DeviceId, SectorBuffer, SECTORSIZE, &BytesRead);
        if (Status != ESUCCESS || BytesRead != SECTORSIZE)
        {
            return EIO;
        }
        RtlCopyMemory(Buffer, SectorBuffer + OffsetInSector, LengthInSector);
        *Count += LengthInSector;
        N -= LengthInSector;
        FileHandle->FilePointer += LengthInSector;
        Buffer = (PVOID)((ULONG_PTR)Buffer + LengthInSector);
    }




    if (N > 0)
    {



        NumberOfSectors = (N / SECTORSIZE);

        SectorNumber = FileHandle->FileStart + (FileHandle->FilePointer / SECTORSIZE);




        Position.HighPart = 0;
        Position.LowPart = SectorNumber * SECTORSIZE;
        Status = ArcSeek(DeviceId, &Position, SeekAbsolute);
        if (Status != ESUCCESS)
        {
            return Status;
        }
        Status = ArcRead(DeviceId, Buffer, NumberOfSectors * SECTORSIZE, &BytesRead);
        if (Status != ESUCCESS || BytesRead != NumberOfSectors * SECTORSIZE)
        {
            return EIO;
        }

        *Count += NumberOfSectors * SECTORSIZE;
        N -= NumberOfSectors * SECTORSIZE;
        FileHandle->FilePointer += NumberOfSectors * SECTORSIZE;
        Buffer = (PVOID)((ULONG_PTR)Buffer + NumberOfSectors * SECTORSIZE);
    }




    if (N > 0)
    {
        SectorNumber = FileHandle->FileStart + (FileHandle->FilePointer / SECTORSIZE);




        Position.HighPart = 0;
        Position.LowPart = SectorNumber * SECTORSIZE;
        Status = ArcSeek(DeviceId, &Position, SeekAbsolute);
        if (Status != ESUCCESS)
        {
            return Status;
        }
        Status = ArcRead(DeviceId, SectorBuffer, SECTORSIZE, &BytesRead);
        if (Status != ESUCCESS || BytesRead != SECTORSIZE)
        {
            return EIO;
        }
        RtlCopyMemory(Buffer, SectorBuffer, N);
        *Count += N;
        FileHandle->FilePointer += N;
    }

    TRACE("IsoRead() done\n");

    return ESUCCESS;
}
