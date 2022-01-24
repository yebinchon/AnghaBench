#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_3__ {int LowPart; scalar_t__ HighPart; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  scalar_t__ ARC_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,scalar_t__,int,int*) ; 
 scalar_t__ FUNC1 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ EIO ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ ESUCCESS ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int SECTORSIZE ; 
 int /*<<< orphan*/  SeekAbsolute ; 
 int /*<<< orphan*/  TAG_ISO_BUFFER ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 

__attribute__((used)) static ARC_STATUS FUNC6(ULONG DeviceId, ULONG DirectoryStartSector, ULONG DirectoryLength,
    PVOID* pDirectoryBuffer)
{
    PVOID DirectoryBuffer;
    ULONG SectorCount;
    LARGE_INTEGER Position;
    ULONG Count;
    ARC_STATUS Status;

    FUNC5("IsoBufferDirectory() DirectoryStartSector = %d DirectoryLength = %d\n", DirectoryStartSector, DirectoryLength);

    SectorCount = FUNC4(DirectoryLength, SECTORSIZE) / SECTORSIZE;
    FUNC5("Trying to read (DirectoryCount) %d sectors.\n", SectorCount);

    //
    // Attempt to allocate memory for directory buffer
    //
    FUNC5("Trying to allocate (DirectoryLength) %d bytes.\n", DirectoryLength);
    DirectoryBuffer = FUNC2(DirectoryLength, TAG_ISO_BUFFER);
    if (!DirectoryBuffer)
        return ENOMEM;

    //
    // Now read directory contents into DirectoryBuffer
    //
    Position.HighPart = 0;
    Position.LowPart = DirectoryStartSector * SECTORSIZE;
    Status = FUNC1(DeviceId, &Position, SeekAbsolute);
    if (Status != ESUCCESS)
    {
        FUNC3(DirectoryBuffer, TAG_ISO_BUFFER);
        return Status;
    }
    Status = FUNC0(DeviceId, DirectoryBuffer, SectorCount * SECTORSIZE, &Count);
    if (Status != ESUCCESS || Count != SectorCount * SECTORSIZE)
    {
        FUNC3(DirectoryBuffer, TAG_ISO_BUFFER);
        return EIO;
    }

    *pDirectoryBuffer = DirectoryBuffer;
    return ESUCCESS;
}