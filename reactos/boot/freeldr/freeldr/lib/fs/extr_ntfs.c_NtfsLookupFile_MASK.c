#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ UCHAR ;
typedef  int /*<<< orphan*/  PNTFS_VOLUME_INFO ;
typedef  int /*<<< orphan*/  PNTFS_MFT_RECORD ;
typedef  int /*<<< orphan*/ * PNTFS_ATTR_CONTEXT ;
typedef  char* PCSTR ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  NTFS_ATTR_TYPE_DATA ; 
 int /*<<< orphan*/  NTFS_FILE_ROOT ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOLEAN FUNC6(PNTFS_VOLUME_INFO Volume, PCSTR FileName, PNTFS_MFT_RECORD MftRecord, PNTFS_ATTR_CONTEXT *DataContext)
{
    ULONG NumberOfPathParts;
    CHAR PathPart[261];
    ULONGLONG CurrentMFTIndex;
    UCHAR i;

    FUNC5("NtfsLookupFile() FileName = %s\n", FileName);

    CurrentMFTIndex = NTFS_FILE_ROOT;
    NumberOfPathParts = FUNC1(FileName);
    for (i = 0; i < NumberOfPathParts; i++)
    {
        FUNC0(PathPart, FileName);

        for (; (*FileName != '\\') && (*FileName != '/') && (*FileName != '\0'); FileName++)
            ;
        FileName++;

        FUNC5("- Lookup: %s\n", PathPart);
        if (!FUNC3(Volume, CurrentMFTIndex, PathPart, &CurrentMFTIndex))
        {
            FUNC5("- Failed\n");
            return FALSE;
        }
        FUNC5("- Lookup: %x\n", CurrentMFTIndex);
    }

    if (!FUNC4(Volume, CurrentMFTIndex, MftRecord))
    {
        FUNC5("NtfsLookupFile: Can't read MFT record\n");
        return FALSE;
    }

    *DataContext = FUNC2(Volume, MftRecord, NTFS_ATTR_TYPE_DATA, L"");
    if (*DataContext == NULL)
    {
        FUNC5("NtfsLookupFile: Can't find data attribute\n");
        return FALSE;
    }

    return TRUE;
}