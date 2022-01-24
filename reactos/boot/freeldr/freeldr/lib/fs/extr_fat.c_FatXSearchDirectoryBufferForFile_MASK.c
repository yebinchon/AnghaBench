#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_9__ {int Attributes; int FileSize; int CurrentCluster; int StartCluster; scalar_t__ FilePointer; } ;
struct TYPE_8__ {int FileNameSize; int Attr; int Size; int StartCluster; int Time; int Date; int CreateTime; int CreateDate; int LastAccessTime; int LastAccessDate; int /*<<< orphan*/  FileName; } ;
typedef  int SIZE_T ;
typedef  TYPE_1__* PVOID ;
typedef  int /*<<< orphan*/  PFAT_VOLUME_INFO ;
typedef  TYPE_2__* PFAT_FILE_INFO ;
typedef  TYPE_1__* PFATX_DIRENTRY ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  TYPE_1__ FATX_DIRENTRY ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOLEAN FUNC4(PFAT_VOLUME_INFO Volume, PVOID DirectoryBuffer, ULONG DirectorySize, PCHAR FileName, PFAT_FILE_INFO FatFileInfoPointer)
{
    ULONG        EntryCount;
    ULONG        CurrentEntry;
    SIZE_T        FileNameLen;
    FATX_DIRENTRY    OurDirEntry;
    PFATX_DIRENTRY    DirEntry = &OurDirEntry;

    EntryCount = DirectorySize / sizeof(FATX_DIRENTRY);

    FUNC1("FatXSearchDirectoryBufferForFile() DirectoryBuffer = 0x%x EntryCount = %d FileName = %s\n", DirectoryBuffer, EntryCount, FileName);

    FileNameLen = FUNC3(FileName);

    for (CurrentEntry = 0; CurrentEntry < EntryCount; CurrentEntry++, DirectoryBuffer = ((PFATX_DIRENTRY)DirectoryBuffer)+1)
    {
        OurDirEntry = *(PFATX_DIRENTRY) DirectoryBuffer;
        FUNC0(&OurDirEntry);
        if (0xff == DirEntry->FileNameSize)
        {
            break;
        }
        if (0xe5 == DirEntry->FileNameSize)
        {
            continue;
        }
        if (FileNameLen == DirEntry->FileNameSize &&
            0 == FUNC2(FileName, DirEntry->FileName, FileNameLen))
        {
            /*
             * We found the entry, now fill in the FAT_FILE_INFO struct
             */
            FatFileInfoPointer->Attributes = DirEntry->Attr;
            FatFileInfoPointer->FileSize = DirEntry->Size;
            FatFileInfoPointer->FilePointer = 0;
            FatFileInfoPointer->CurrentCluster = DirEntry->StartCluster;
            FatFileInfoPointer->StartCluster = DirEntry->StartCluster;

            FUNC1("FATX Directory Entry:\n");
            FUNC1("FileNameSize = %d\n", DirEntry->FileNameSize);
            FUNC1("Attr = 0x%x\n", DirEntry->Attr);
            FUNC1("StartCluster = 0x%x\n", DirEntry->StartCluster);
            FUNC1("Size = %d\n", DirEntry->Size);
            FUNC1("Time = %d\n", DirEntry->Time);
            FUNC1("Date = %d\n", DirEntry->Date);
            FUNC1("CreateTime = %d\n", DirEntry->CreateTime);
            FUNC1("CreateDate = %d\n", DirEntry->CreateDate);
            FUNC1("LastAccessTime = %d\n", DirEntry->LastAccessTime);
            FUNC1("LastAccessDate = %d\n", DirEntry->LastAccessDate);

            return TRUE;
        }
    }

    return FALSE;
}