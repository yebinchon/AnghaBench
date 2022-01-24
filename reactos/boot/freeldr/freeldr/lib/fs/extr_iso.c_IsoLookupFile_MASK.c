#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_16__ {int LowPart; scalar_t__ HighPart; } ;
struct TYPE_15__ {int FileStart; int FileSize; } ;
struct TYPE_13__ {int ExtentLocationL; int DataLengthL; } ;
struct TYPE_14__ {TYPE_1__ RootDirRecord; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PVD ;
typedef  TYPE_2__* PPVD ;
typedef  TYPE_3__* PISO_FILE_INFO ;
typedef  char* PCSTR ;
typedef  TYPE_4__ LARGE_INTEGER ;
typedef  TYPE_3__ ISO_FILE_INFO ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ ARC_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,TYPE_2__*,int,int*) ; 
 scalar_t__ FUNC1 (int,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ EIO ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ESUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 int SECTORSIZE ; 
 int /*<<< orphan*/  SeekAbsolute ; 
 int /*<<< orphan*/  TAG_ISO_BUFFER ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static ARC_STATUS FUNC10(PCSTR FileName, ULONG DeviceId, PISO_FILE_INFO IsoFileInfoPointer)
{
    UCHAR Buffer[SECTORSIZE];
    PPVD Pvd = (PPVD)Buffer;
    UINT32        i;
    ULONG            NumberOfPathParts;
    CHAR        PathPart[261];
    PVOID        DirectoryBuffer;
    ULONG        DirectorySector;
    ULONG        DirectoryLength;
    ISO_FILE_INFO    IsoFileInfo;
    LARGE_INTEGER Position;
    ULONG Count;
    ARC_STATUS Status;

    FUNC9("IsoLookupFile() FileName = %s\n", FileName);

    FUNC8(IsoFileInfoPointer, sizeof(ISO_FILE_INFO));
    FUNC8(&IsoFileInfo, sizeof(ISO_FILE_INFO));

    //
    // Read The Primary Volume Descriptor
    //
    Position.HighPart = 0;
    Position.LowPart = 16 * SECTORSIZE;
    Status = FUNC1(DeviceId, &Position, SeekAbsolute);
    if (Status != ESUCCESS)
        return Status;
    Status = FUNC0(DeviceId, Pvd, SECTORSIZE, &Count);
    if (Status != ESUCCESS || Count < sizeof(PVD))
        return EIO;

    DirectorySector = Pvd->RootDirRecord.ExtentLocationL;
    DirectoryLength = Pvd->RootDirRecord.DataLengthL;

    //
    // Figure out how many sub-directories we are nested in
    //
    NumberOfPathParts = FUNC4(FileName);

    //
    // Loop once for each part
    //
    for (i=0; i<NumberOfPathParts; i++)
    {
        //
        // Get first path part
        //
        FUNC3(PathPart, FileName);

        //
        // Advance to the next part of the path
        //
        for (; (*FileName != '\\') && (*FileName != '/') && (*FileName != '\0'); FileName++)
        {
        }
        FileName++;

        //
        // Buffer the directory contents
        //
        Status = FUNC5(DeviceId, DirectorySector, DirectoryLength, &DirectoryBuffer);
        if (Status != ESUCCESS)
            return Status;

        //
        // Search for file name in directory
        //
        if (!FUNC6(DirectoryBuffer, DirectoryLength, PathPart, &IsoFileInfo))
        {
            FUNC2(DirectoryBuffer, TAG_ISO_BUFFER);
            return ENOENT;
        }

        FUNC2(DirectoryBuffer, TAG_ISO_BUFFER);

        //
        // If we have another sub-directory to go then
        // grab the start sector and file size
        //
        if ((i+1) < NumberOfPathParts)
        {
            DirectorySector = IsoFileInfo.FileStart;
            DirectoryLength = IsoFileInfo.FileSize;
        }

    }

    FUNC7(IsoFileInfoPointer, &IsoFileInfo, sizeof(ISO_FILE_INFO));

    return ESUCCESS;
}