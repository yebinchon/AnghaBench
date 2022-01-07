
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ULONG ;
typedef int UINT32 ;
typedef int UCHAR ;
struct TYPE_16__ {int LowPart; scalar_t__ HighPart; } ;
struct TYPE_15__ {int FileStart; int FileSize; } ;
struct TYPE_13__ {int ExtentLocationL; int DataLengthL; } ;
struct TYPE_14__ {TYPE_1__ RootDirRecord; } ;
typedef int PVOID ;
typedef int PVD ;
typedef TYPE_2__* PPVD ;
typedef TYPE_3__* PISO_FILE_INFO ;
typedef char* PCSTR ;
typedef TYPE_4__ LARGE_INTEGER ;
typedef TYPE_3__ ISO_FILE_INFO ;
typedef int CHAR ;
typedef scalar_t__ ARC_STATUS ;


 scalar_t__ ArcRead (int,TYPE_2__*,int,int*) ;
 scalar_t__ ArcSeek (int,TYPE_4__*,int ) ;
 scalar_t__ EIO ;
 scalar_t__ ENOENT ;
 scalar_t__ ESUCCESS ;
 int FrLdrTempFree (int ,int ) ;
 int FsGetFirstNameFromPath (int *,char*) ;
 int FsGetNumPathParts (char*) ;
 scalar_t__ IsoBufferDirectory (int,int,int,int *) ;
 int IsoSearchDirectoryBufferForFile (int ,int,int *,TYPE_3__*) ;
 int RtlCopyMemory (TYPE_3__*,TYPE_3__*,int) ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int SECTORSIZE ;
 int SeekAbsolute ;
 int TAG_ISO_BUFFER ;
 int TRACE (char*,char*) ;

__attribute__((used)) static ARC_STATUS IsoLookupFile(PCSTR FileName, ULONG DeviceId, PISO_FILE_INFO IsoFileInfoPointer)
{
    UCHAR Buffer[SECTORSIZE];
    PPVD Pvd = (PPVD)Buffer;
    UINT32 i;
    ULONG NumberOfPathParts;
    CHAR PathPart[261];
    PVOID DirectoryBuffer;
    ULONG DirectorySector;
    ULONG DirectoryLength;
    ISO_FILE_INFO IsoFileInfo;
    LARGE_INTEGER Position;
    ULONG Count;
    ARC_STATUS Status;

    TRACE("IsoLookupFile() FileName = %s\n", FileName);

    RtlZeroMemory(IsoFileInfoPointer, sizeof(ISO_FILE_INFO));
    RtlZeroMemory(&IsoFileInfo, sizeof(ISO_FILE_INFO));




    Position.HighPart = 0;
    Position.LowPart = 16 * SECTORSIZE;
    Status = ArcSeek(DeviceId, &Position, SeekAbsolute);
    if (Status != ESUCCESS)
        return Status;
    Status = ArcRead(DeviceId, Pvd, SECTORSIZE, &Count);
    if (Status != ESUCCESS || Count < sizeof(PVD))
        return EIO;

    DirectorySector = Pvd->RootDirRecord.ExtentLocationL;
    DirectoryLength = Pvd->RootDirRecord.DataLengthL;




    NumberOfPathParts = FsGetNumPathParts(FileName);




    for (i=0; i<NumberOfPathParts; i++)
    {



        FsGetFirstNameFromPath(PathPart, FileName);




        for (; (*FileName != '\\') && (*FileName != '/') && (*FileName != '\0'); FileName++)
        {
        }
        FileName++;




        Status = IsoBufferDirectory(DeviceId, DirectorySector, DirectoryLength, &DirectoryBuffer);
        if (Status != ESUCCESS)
            return Status;




        if (!IsoSearchDirectoryBufferForFile(DirectoryBuffer, DirectoryLength, PathPart, &IsoFileInfo))
        {
            FrLdrTempFree(DirectoryBuffer, TAG_ISO_BUFFER);
            return ENOENT;
        }

        FrLdrTempFree(DirectoryBuffer, TAG_ISO_BUFFER);





        if ((i+1) < NumberOfPathParts)
        {
            DirectorySector = IsoFileInfo.FileStart;
            DirectoryLength = IsoFileInfo.FileSize;
        }

    }

    RtlCopyMemory(IsoFileInfoPointer, &IsoFileInfo, sizeof(ISO_FILE_INFO));

    return ESUCCESS;
}
