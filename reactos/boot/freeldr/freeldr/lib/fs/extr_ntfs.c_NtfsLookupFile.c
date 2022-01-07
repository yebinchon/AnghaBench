
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ UCHAR ;
typedef int PNTFS_VOLUME_INFO ;
typedef int PNTFS_MFT_RECORD ;
typedef int * PNTFS_ATTR_CONTEXT ;
typedef char* PCSTR ;
typedef int CHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int FsGetFirstNameFromPath (int *,char*) ;
 scalar_t__ FsGetNumPathParts (char*) ;
 int NTFS_ATTR_TYPE_DATA ;
 int NTFS_FILE_ROOT ;
 int * NtfsFindAttribute (int ,int ,int ,char*) ;
 int NtfsFindMftRecord (int ,int ,int *,int *) ;
 int NtfsReadMftRecord (int ,int ,int ) ;
 int TRACE (char*,...) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN NtfsLookupFile(PNTFS_VOLUME_INFO Volume, PCSTR FileName, PNTFS_MFT_RECORD MftRecord, PNTFS_ATTR_CONTEXT *DataContext)
{
    ULONG NumberOfPathParts;
    CHAR PathPart[261];
    ULONGLONG CurrentMFTIndex;
    UCHAR i;

    TRACE("NtfsLookupFile() FileName = %s\n", FileName);

    CurrentMFTIndex = NTFS_FILE_ROOT;
    NumberOfPathParts = FsGetNumPathParts(FileName);
    for (i = 0; i < NumberOfPathParts; i++)
    {
        FsGetFirstNameFromPath(PathPart, FileName);

        for (; (*FileName != '\\') && (*FileName != '/') && (*FileName != '\0'); FileName++)
            ;
        FileName++;

        TRACE("- Lookup: %s\n", PathPart);
        if (!NtfsFindMftRecord(Volume, CurrentMFTIndex, PathPart, &CurrentMFTIndex))
        {
            TRACE("- Failed\n");
            return FALSE;
        }
        TRACE("- Lookup: %x\n", CurrentMFTIndex);
    }

    if (!NtfsReadMftRecord(Volume, CurrentMFTIndex, MftRecord))
    {
        TRACE("NtfsLookupFile: Can't read MFT record\n");
        return FALSE;
    }

    *DataContext = NtfsFindAttribute(Volume, MftRecord, NTFS_ATTR_TYPE_DATA, L"");
    if (*DataContext == ((void*)0))
    {
        TRACE("NtfsLookupFile: Can't find data attribute\n");
        return FALSE;
    }

    return TRUE;
}
