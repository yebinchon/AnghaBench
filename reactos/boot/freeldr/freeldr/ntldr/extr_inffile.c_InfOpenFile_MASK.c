#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_4__ {scalar_t__ HighPart; int LowPart; } ;
struct TYPE_5__ {TYPE_1__ EndingAddress; } ;
typedef  int* PULONG ;
typedef  int /*<<< orphan*/  PSTR ;
typedef  scalar_t__* PINFCACHE ;
typedef  int /*<<< orphan*/ ** PHINF ;
typedef  scalar_t__ PCSTR ;
typedef  scalar_t__* PCHAR ;
typedef  int /*<<< orphan*/  INFCACHE ;
typedef  int /*<<< orphan*/ * HINF ;
typedef  TYPE_2__ FILEINFORMATION ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  scalar_t__ ARC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int,scalar_t__*,int,int*) ; 
 scalar_t__ ESUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  OpenReadOnly ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int) ; 
 int /*<<< orphan*/  TAG_INF_CACHE ; 
 int /*<<< orphan*/  TAG_INF_FILE ; 

BOOLEAN
FUNC8(
    PHINF InfHandle,
    PCSTR FileName,
    PULONG ErrorLine)
{
    FILEINFORMATION Information;
    ULONG FileId;
    PCHAR FileBuffer;
    ULONG FileSize, Count;
    PINFCACHE Cache;
    BOOLEAN Success;
    ARC_STATUS Status;

    *InfHandle = NULL;
    *ErrorLine = (ULONG) - 1;

    //
    // Open the .inf file
    //
    Status = FUNC2((PSTR)FileName, OpenReadOnly, &FileId);
    if (Status != ESUCCESS)
    {
        return FALSE;
    }

    //
    // Query file size
    //
    Status = FUNC1(FileId, &Information);
    if ((Status != ESUCCESS) || (Information.EndingAddress.HighPart != 0))
    {
        FUNC0(FileId);
        return FALSE;
    }
    FileSize = Information.EndingAddress.LowPart;

    //
    // Allocate buffer to cache the file
    //
    FileBuffer = FUNC4(FileSize + 1, TAG_INF_FILE);
    if (!FileBuffer)
    {
        FUNC0(FileId);
        return FALSE;
    }

    //
    // Read file into memory
    //
    Status = FUNC3(FileId, FileBuffer, FileSize, &Count);
    if ((Status != ESUCCESS) || (Count != FileSize))
    {
        FUNC0(FileId);
        FUNC5(FileBuffer, TAG_INF_FILE);
        return FALSE;
    }

    //
    // We don't need the file anymore. Close it
    //
    FUNC0(FileId);

    //
    // Append string terminator
    //
    FileBuffer[FileSize] = 0;

    //
    // Allocate infcache header
    //
    Cache = (PINFCACHE)FUNC4(sizeof(INFCACHE), TAG_INF_CACHE);
    if (!Cache)
    {
        FUNC5(FileBuffer, TAG_INF_FILE);
        return FALSE;
    }

    //
    // Initialize inicache header
    //
    FUNC7(Cache, sizeof(INFCACHE));

    //
    // Parse the inf buffer
    //
    Success = FUNC6(Cache,
                              FileBuffer,
                              FileBuffer + FileSize,
                              ErrorLine);
    if (!Success)
    {
        FUNC5(Cache, TAG_INF_CACHE);
        Cache = NULL;
    }

    //
    // Free file buffer, as it has been parsed
    //
    FUNC5(FileBuffer, TAG_INF_FILE);

    //
    // Return .inf parsed contents
    //
    *InfHandle = (HINF)Cache;

    return Success;
}