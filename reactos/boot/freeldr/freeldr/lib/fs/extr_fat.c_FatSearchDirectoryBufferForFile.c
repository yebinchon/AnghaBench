
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ULONG ;
typedef scalar_t__ UCHAR ;
struct TYPE_14__ {int Attributes; int FileSize; int CurrentCluster; int StartCluster; scalar_t__ FilePointer; } ;
struct TYPE_13__ {int SequenceNumber; int* Name0_4; int* Name5_10; int* Name11_12; } ;
struct TYPE_12__ {char* FileName; int Attr; int Size; int ClusterHigh; int ClusterLow; int ReservedNT; int TimeInTenths; int CreateTime; int CreateDate; int LastAccessDate; int Time; int Date; } ;
typedef TYPE_1__* PVOID ;
typedef TYPE_2__* PLFN_DIRENTRY ;
typedef int PFAT_VOLUME_INFO ;
typedef TYPE_3__* PFAT_FILE_INFO ;
typedef TYPE_1__* PDIRENTRY ;
typedef scalar_t__* PCHAR ;
typedef TYPE_2__ LFN_DIRENTRY ;
typedef TYPE_1__ DIRENTRY ;
typedef scalar_t__ CHAR ;
typedef int BOOLEAN ;


 int ATTR_LONG_NAME ;
 int ATTR_VOLUMENAME ;
 int FALSE ;
 int FatParseShortFileName (scalar_t__*,TYPE_1__*) ;
 int FatSwapDirEntry (TYPE_1__*) ;
 int FatSwapLFNDirEntry (TYPE_2__*) ;
 int TRACE (char*,...) ;
 int TRUE ;
 scalar_t__ _stricmp (scalar_t__*,scalar_t__*) ;
 int memset (scalar_t__*,int ,int) ;
 scalar_t__ strlen (scalar_t__*) ;

BOOLEAN FatSearchDirectoryBufferForFile(PFAT_VOLUME_INFO Volume, PVOID DirectoryBuffer, ULONG DirectorySize, PCHAR FileName, PFAT_FILE_INFO FatFileInfoPointer)
{
    ULONG EntryCount;
    ULONG CurrentEntry;
    CHAR LfnNameBuffer[265];
    CHAR ShortNameBuffer[20];
    ULONG StartCluster;
    DIRENTRY OurDirEntry;
    LFN_DIRENTRY OurLfnDirEntry;
    PDIRENTRY DirEntry = &OurDirEntry;
    PLFN_DIRENTRY LfnDirEntry = &OurLfnDirEntry;

    EntryCount = DirectorySize / sizeof(DIRENTRY);

    TRACE("FatSearchDirectoryBufferForFile() DirectoryBuffer = 0x%x EntryCount = %d FileName = %s\n", DirectoryBuffer, EntryCount, FileName);

    memset(ShortNameBuffer, 0, 13 * sizeof(CHAR));
    memset(LfnNameBuffer, 0, 261 * sizeof(CHAR));

    for (CurrentEntry=0; CurrentEntry<EntryCount; CurrentEntry++, DirectoryBuffer = ((PDIRENTRY)DirectoryBuffer)+1)
    {
        OurLfnDirEntry = *((PLFN_DIRENTRY) DirectoryBuffer);
        FatSwapLFNDirEntry(LfnDirEntry);
        OurDirEntry = *((PDIRENTRY) DirectoryBuffer);
        FatSwapDirEntry(DirEntry);
        if (DirEntry->FileName[0] == '\0')
        {
            return FALSE;
        }




        if (DirEntry->FileName[0] == '\xE5')
        {
            memset(ShortNameBuffer, 0, 13 * sizeof(CHAR));
            memset(LfnNameBuffer, 0, 261 * sizeof(CHAR));
            continue;
        }





        if (DirEntry->Attr == ATTR_LONG_NAME)
        {



            if (LfnDirEntry->SequenceNumber & 0x80)
            {
                continue;
            }





            LfnDirEntry->SequenceNumber &= 0x3F;
            LfnDirEntry->SequenceNumber--;




            if (LfnDirEntry->Name0_4[0] != 0xFFFF)
            {
                LfnNameBuffer[0 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name0_4[0];
            }
            if (LfnDirEntry->Name0_4[1] != 0xFFFF)
            {
                LfnNameBuffer[1 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name0_4[1];
            }
            if (LfnDirEntry->Name0_4[2] != 0xFFFF)
            {
                LfnNameBuffer[2 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name0_4[2];
            }
            if (LfnDirEntry->Name0_4[3] != 0xFFFF)
            {
                LfnNameBuffer[3 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name0_4[3];
            }
            if (LfnDirEntry->Name0_4[4] != 0xFFFF)
            {
                LfnNameBuffer[4 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name0_4[4];
            }
            if (LfnDirEntry->Name5_10[0] != 0xFFFF)
            {
                LfnNameBuffer[5 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name5_10[0];
            }
            if (LfnDirEntry->Name5_10[1] != 0xFFFF)
            {
                LfnNameBuffer[6 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name5_10[1];
            }
            if (LfnDirEntry->Name5_10[2] != 0xFFFF)
            {
                LfnNameBuffer[7 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name5_10[2];
            }
            if (LfnDirEntry->Name5_10[3] != 0xFFFF)
            {
                LfnNameBuffer[8 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name5_10[3];
            }
            if (LfnDirEntry->Name5_10[4] != 0xFFFF)
            {
                LfnNameBuffer[9 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name5_10[4];
            }
            if (LfnDirEntry->Name5_10[5] != 0xFFFF)
            {
                LfnNameBuffer[10 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name5_10[5];
            }
            if (LfnDirEntry->Name11_12[0] != 0xFFFF)
            {
                LfnNameBuffer[11 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name11_12[0];
            }
            if (LfnDirEntry->Name11_12[1] != 0xFFFF)
            {
                LfnNameBuffer[12 + (LfnDirEntry->SequenceNumber * 13)] = (UCHAR)LfnDirEntry->Name11_12[1];
            }




            continue;
        }





        if (DirEntry->Attr & ATTR_VOLUMENAME)
        {
            memset(ShortNameBuffer, 0, 13 * sizeof(UCHAR));
            memset(LfnNameBuffer, 0, 261 * sizeof(UCHAR));
            continue;
        }
        FatParseShortFileName(ShortNameBuffer, DirEntry);







        if (((strlen(FileName) == strlen(LfnNameBuffer)) && (_stricmp(FileName, LfnNameBuffer) == 0)) ||
            ((strlen(FileName) == strlen(ShortNameBuffer)) && (_stricmp(FileName, ShortNameBuffer) == 0))) {



            FatFileInfoPointer->Attributes = DirEntry->Attr;
            FatFileInfoPointer->FileSize = DirEntry->Size;
            FatFileInfoPointer->FilePointer = 0;
            StartCluster = ((ULONG)DirEntry->ClusterHigh << 16) + DirEntry->ClusterLow;
            FatFileInfoPointer->CurrentCluster = StartCluster;
            FatFileInfoPointer->StartCluster = StartCluster;

            TRACE("MSDOS Directory Entry:\n");
            TRACE("FileName[11] = %c%c%c%c%c%c%c%c%c%c%c\n", DirEntry->FileName[0], DirEntry->FileName[1], DirEntry->FileName[2], DirEntry->FileName[3], DirEntry->FileName[4], DirEntry->FileName[5], DirEntry->FileName[6], DirEntry->FileName[7], DirEntry->FileName[8], DirEntry->FileName[9], DirEntry->FileName[10]);
            TRACE("Attr = 0x%x\n", DirEntry->Attr);
            TRACE("ReservedNT = 0x%x\n", DirEntry->ReservedNT);
            TRACE("TimeInTenths = %d\n", DirEntry->TimeInTenths);
            TRACE("CreateTime = %d\n", DirEntry->CreateTime);
            TRACE("CreateDate = %d\n", DirEntry->CreateDate);
            TRACE("LastAccessDate = %d\n", DirEntry->LastAccessDate);
            TRACE("ClusterHigh = 0x%x\n", DirEntry->ClusterHigh);
            TRACE("Time = %d\n", DirEntry->Time);
            TRACE("Date = %d\n", DirEntry->Date);
            TRACE("ClusterLow = 0x%x\n", DirEntry->ClusterLow);
            TRACE("Size = %d\n", DirEntry->Size);
            TRACE("StartCluster = 0x%x\n", StartCluster);

            return TRUE;
        }




        memset(ShortNameBuffer, 0, 13 * sizeof(UCHAR));
        memset(LfnNameBuffer, 0, 261 * sizeof(UCHAR));
        continue;
    }

    return FALSE;
}
