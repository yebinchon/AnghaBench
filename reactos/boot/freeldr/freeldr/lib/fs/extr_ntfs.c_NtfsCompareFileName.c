
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UCHAR ;
struct TYPE_5__ {size_t FileNameLength; scalar_t__ FileNameType; scalar_t__* FileName; } ;
struct TYPE_6__ {TYPE_1__ FileName; } ;
typedef scalar_t__* PWCHAR ;
typedef TYPE_2__* PNTFS_INDEX_ENTRY ;
typedef scalar_t__* PCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ NTFS_FILE_NAME_POSIX ;
 int NtfsPrintFile (TYPE_2__*) ;
 int TRUE ;
 size_t strlen (scalar_t__*) ;
 scalar_t__ tolower (scalar_t__) ;

__attribute__((used)) static BOOLEAN NtfsCompareFileName(PCHAR FileName, PNTFS_INDEX_ENTRY IndexEntry)
{
    PWCHAR EntryFileName;
    UCHAR EntryFileNameLength;
    UCHAR i;

    EntryFileName = IndexEntry->FileName.FileName;
    EntryFileNameLength = IndexEntry->FileName.FileNameLength;





    if (strlen(FileName) != EntryFileNameLength)
        return FALSE;


    if (IndexEntry->FileName.FileNameType == NTFS_FILE_NAME_POSIX)
    {
        for (i = 0; i < EntryFileNameLength; i++)
            if (EntryFileName[i] != FileName[i])
                return FALSE;
    }
    else
    {
        for (i = 0; i < EntryFileNameLength; i++)
            if (tolower(EntryFileName[i]) != tolower(FileName[i]))
                return FALSE;
    }

    return TRUE;
}
