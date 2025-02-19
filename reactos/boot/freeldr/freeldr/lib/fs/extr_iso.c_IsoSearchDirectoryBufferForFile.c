
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
struct TYPE_5__ {scalar_t__ RecordLength; int FileIdLength; int* FileId; int FileFlags; int DataLengthL; int ExtentLocationL; } ;
struct TYPE_4__ {int Directory; scalar_t__ FilePointer; int FileSize; int FileStart; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PISO_FILE_INFO ;
typedef TYPE_2__* PDIR_RECORD ;
typedef char* PCHAR ;
typedef char CHAR ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 scalar_t__ ROUND_UP (scalar_t__,int ) ;
 int RtlZeroMemory (char*,int) ;
 int SECTORSIZE ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 scalar_t__ _stricmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static BOOLEAN IsoSearchDirectoryBufferForFile(PVOID DirectoryBuffer, ULONG DirectoryLength, PCHAR FileName, PISO_FILE_INFO IsoFileInfoPointer)
{
    PDIR_RECORD Record;
    ULONG Offset;
    ULONG i;
    CHAR Name[32];

    TRACE("IsoSearchDirectoryBufferForFile() DirectoryBuffer = 0x%x DirectoryLength = %d FileName = %s\n", DirectoryBuffer, DirectoryLength, FileName);

    RtlZeroMemory(Name, 32 * sizeof(UCHAR));

    Offset = 0;
    Record = (PDIR_RECORD)DirectoryBuffer;
    while (TRUE)
    {
        Offset = Offset + Record->RecordLength;
        Record = (PDIR_RECORD)((ULONG_PTR)DirectoryBuffer + Offset);

        if (Record->RecordLength == 0)
        {
            Offset = ROUND_UP(Offset, SECTORSIZE);
            Record = (PDIR_RECORD)((ULONG_PTR)DirectoryBuffer + Offset);
        }

        if (Offset >= DirectoryLength)
            return FALSE;

        if (Record->FileIdLength == 1 && Record->FileId[0] == 0)
        {
            TRACE("Name '.'\n");
        }
        else if (Record->FileIdLength == 1 && Record->FileId[0] == 1)
        {
            TRACE("Name '..'\n");
        }
        else
        {
            for (i = 0; i < Record->FileIdLength && Record->FileId[i] != ';'; i++)
                Name[i] = Record->FileId[i];
            Name[i] = 0;
            TRACE("Name '%s'\n", Name);

            if (strlen(FileName) == strlen(Name) && _stricmp(FileName, Name) == 0)
            {
                IsoFileInfoPointer->FileStart = Record->ExtentLocationL;
                IsoFileInfoPointer->FileSize = Record->DataLengthL;
                IsoFileInfoPointer->FilePointer = 0;
                IsoFileInfoPointer->Directory = !!(Record->FileFlags & 0x02);

                return TRUE;
            }

        }

        RtlZeroMemory(Name, 32 * sizeof(UCHAR));
    }

    return FALSE;
}
