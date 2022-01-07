
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
typedef scalar_t__ UINT32 ;
struct TYPE_9__ {scalar_t__ HighPart; scalar_t__ LowPart; int QuadPart; } ;
struct TYPE_8__ {scalar_t__ FilePointer; scalar_t__ FileSize; scalar_t__ CurrentCluster; scalar_t__ StartCluster; TYPE_1__* Volume; } ;
struct TYPE_7__ {scalar_t__ SectorsPerCluster; scalar_t__ BytesPerSector; } ;
typedef int SEEKMODE ;
typedef TYPE_1__* PFAT_VOLUME_INFO ;
typedef TYPE_2__* PFAT_FILE_INFO ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int ARC_STATUS ;


 int ASSERT (int ) ;
 int EINVAL ;
 int EIO ;
 int ESUCCESS ;
 int FALSE ;
 int FatGetFatEntry (TYPE_1__*,scalar_t__,scalar_t__*) ;
 TYPE_2__* FsGetDeviceSpecific (int ) ;


 int TRACE (char*,scalar_t__,scalar_t__,...) ;

ARC_STATUS FatSeek(ULONG FileId, LARGE_INTEGER* Position, SEEKMODE SeekMode)
{
    PFAT_FILE_INFO FileHandle = FsGetDeviceSpecific(FileId);
    PFAT_VOLUME_INFO Volume = FileHandle->Volume;
    LARGE_INTEGER NewPosition = *Position;

    switch (SeekMode)
    {
        case 129:
            break;
        case 128:
            NewPosition.QuadPart += (ULONGLONG)FileHandle->FilePointer;
            break;
        default:
            ASSERT(FALSE);
            return EINVAL;
    }

    if (NewPosition.HighPart != 0)
        return EINVAL;
    if (NewPosition.LowPart >= FileHandle->FileSize)
        return EINVAL;

    TRACE("FatSeek() NewPosition = %u, OldPointer = %u, SeekMode = %d\n", NewPosition.LowPart, FileHandle->FilePointer, SeekMode);

    {
        UINT32 OldClusterIdx = FileHandle->FilePointer / (Volume->SectorsPerCluster * Volume->BytesPerSector);
        UINT32 NewClusterIdx = NewPosition.LowPart / (Volume->SectorsPerCluster * Volume->BytesPerSector);

        TRACE("FatSeek() OldClusterIdx: %u, NewClusterIdx: %u\n", OldClusterIdx, NewClusterIdx);

        if (NewClusterIdx != OldClusterIdx)
        {
            UINT32 CurrentClusterIdx, ClusterNumber;

            if (NewClusterIdx > OldClusterIdx)
            {
                CurrentClusterIdx = OldClusterIdx;
                ClusterNumber = FileHandle->CurrentCluster;
            }
            else
            {
                CurrentClusterIdx = 0;
                ClusterNumber = FileHandle->StartCluster;
            }

            for (; CurrentClusterIdx < NewClusterIdx; CurrentClusterIdx++)
            {
                if (!FatGetFatEntry(Volume, ClusterNumber, &ClusterNumber))
                {
                    return EIO;
                }
            }
            FileHandle->CurrentCluster = ClusterNumber;
        }
    }

    FileHandle->FilePointer = NewPosition.LowPart;

    return ESUCCESS;
}
