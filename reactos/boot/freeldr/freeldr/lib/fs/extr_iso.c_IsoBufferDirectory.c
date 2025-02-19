
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int LowPart; scalar_t__ HighPart; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef scalar_t__ ARC_STATUS ;


 scalar_t__ ArcRead (int,scalar_t__,int,int*) ;
 scalar_t__ ArcSeek (int,TYPE_1__*,int ) ;
 scalar_t__ EIO ;
 scalar_t__ ENOMEM ;
 scalar_t__ ESUCCESS ;
 scalar_t__ FrLdrTempAlloc (int,int ) ;
 int FrLdrTempFree (scalar_t__,int ) ;
 int ROUND_UP (int,int) ;
 int SECTORSIZE ;
 int SeekAbsolute ;
 int TAG_ISO_BUFFER ;
 int TRACE (char*,int,...) ;

__attribute__((used)) static ARC_STATUS IsoBufferDirectory(ULONG DeviceId, ULONG DirectoryStartSector, ULONG DirectoryLength,
    PVOID* pDirectoryBuffer)
{
    PVOID DirectoryBuffer;
    ULONG SectorCount;
    LARGE_INTEGER Position;
    ULONG Count;
    ARC_STATUS Status;

    TRACE("IsoBufferDirectory() DirectoryStartSector = %d DirectoryLength = %d\n", DirectoryStartSector, DirectoryLength);

    SectorCount = ROUND_UP(DirectoryLength, SECTORSIZE) / SECTORSIZE;
    TRACE("Trying to read (DirectoryCount) %d sectors.\n", SectorCount);




    TRACE("Trying to allocate (DirectoryLength) %d bytes.\n", DirectoryLength);
    DirectoryBuffer = FrLdrTempAlloc(DirectoryLength, TAG_ISO_BUFFER);
    if (!DirectoryBuffer)
        return ENOMEM;




    Position.HighPart = 0;
    Position.LowPart = DirectoryStartSector * SECTORSIZE;
    Status = ArcSeek(DeviceId, &Position, SeekAbsolute);
    if (Status != ESUCCESS)
    {
        FrLdrTempFree(DirectoryBuffer, TAG_ISO_BUFFER);
        return Status;
    }
    Status = ArcRead(DeviceId, DirectoryBuffer, SectorCount * SECTORSIZE, &Count);
    if (Status != ESUCCESS || Count != SectorCount * SECTORSIZE)
    {
        FrLdrTempFree(DirectoryBuffer, TAG_ISO_BUFFER);
        return EIO;
    }

    *pDirectoryBuffer = DirectoryBuffer;
    return ESUCCESS;
}
