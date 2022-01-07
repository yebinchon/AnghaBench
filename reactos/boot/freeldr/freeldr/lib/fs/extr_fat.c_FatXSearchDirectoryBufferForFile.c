
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {int Attributes; int FileSize; int CurrentCluster; int StartCluster; scalar_t__ FilePointer; } ;
struct TYPE_8__ {int FileNameSize; int Attr; int Size; int StartCluster; int Time; int Date; int CreateTime; int CreateDate; int LastAccessTime; int LastAccessDate; int FileName; } ;
typedef int SIZE_T ;
typedef TYPE_1__* PVOID ;
typedef int PFAT_VOLUME_INFO ;
typedef TYPE_2__* PFAT_FILE_INFO ;
typedef TYPE_1__* PFATX_DIRENTRY ;
typedef int PCHAR ;
typedef TYPE_1__ FATX_DIRENTRY ;
typedef int BOOLEAN ;


 int FALSE ;
 int FatSwapFatXDirEntry (TYPE_1__*) ;
 int TRACE (char*,...) ;
 int TRUE ;
 scalar_t__ _strnicmp (int ,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static BOOLEAN FatXSearchDirectoryBufferForFile(PFAT_VOLUME_INFO Volume, PVOID DirectoryBuffer, ULONG DirectorySize, PCHAR FileName, PFAT_FILE_INFO FatFileInfoPointer)
{
    ULONG EntryCount;
    ULONG CurrentEntry;
    SIZE_T FileNameLen;
    FATX_DIRENTRY OurDirEntry;
    PFATX_DIRENTRY DirEntry = &OurDirEntry;

    EntryCount = DirectorySize / sizeof(FATX_DIRENTRY);

    TRACE("FatXSearchDirectoryBufferForFile() DirectoryBuffer = 0x%x EntryCount = %d FileName = %s\n", DirectoryBuffer, EntryCount, FileName);

    FileNameLen = strlen(FileName);

    for (CurrentEntry = 0; CurrentEntry < EntryCount; CurrentEntry++, DirectoryBuffer = ((PFATX_DIRENTRY)DirectoryBuffer)+1)
    {
        OurDirEntry = *(PFATX_DIRENTRY) DirectoryBuffer;
        FatSwapFatXDirEntry(&OurDirEntry);
        if (0xff == DirEntry->FileNameSize)
        {
            break;
        }
        if (0xe5 == DirEntry->FileNameSize)
        {
            continue;
        }
        if (FileNameLen == DirEntry->FileNameSize &&
            0 == _strnicmp(FileName, DirEntry->FileName, FileNameLen))
        {



            FatFileInfoPointer->Attributes = DirEntry->Attr;
            FatFileInfoPointer->FileSize = DirEntry->Size;
            FatFileInfoPointer->FilePointer = 0;
            FatFileInfoPointer->CurrentCluster = DirEntry->StartCluster;
            FatFileInfoPointer->StartCluster = DirEntry->StartCluster;

            TRACE("FATX Directory Entry:\n");
            TRACE("FileNameSize = %d\n", DirEntry->FileNameSize);
            TRACE("Attr = 0x%x\n", DirEntry->Attr);
            TRACE("StartCluster = 0x%x\n", DirEntry->StartCluster);
            TRACE("Size = %d\n", DirEntry->Size);
            TRACE("Time = %d\n", DirEntry->Time);
            TRACE("Date = %d\n", DirEntry->Date);
            TRACE("CreateTime = %d\n", DirEntry->CreateTime);
            TRACE("CreateDate = %d\n", DirEntry->CreateDate);
            TRACE("LastAccessTime = %d\n", DirEntry->LastAccessTime);
            TRACE("LastAccessDate = %d\n", DirEntry->LastAccessDate);

            return TRUE;
        }
    }

    return FALSE;
}
