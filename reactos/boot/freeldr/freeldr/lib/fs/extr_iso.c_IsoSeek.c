
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_6__ {scalar_t__ HighPart; scalar_t__ LowPart; int QuadPart; } ;
struct TYPE_5__ {scalar_t__ FilePointer; scalar_t__ FileSize; } ;
typedef int SEEKMODE ;
typedef TYPE_1__* PISO_FILE_INFO ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int ARC_STATUS ;


 int ASSERT (int ) ;
 int EINVAL ;
 int ESUCCESS ;
 int FALSE ;
 TYPE_1__* FsGetDeviceSpecific (int ) ;



ARC_STATUS IsoSeek(ULONG FileId, LARGE_INTEGER* Position, SEEKMODE SeekMode)
{
    PISO_FILE_INFO FileHandle = FsGetDeviceSpecific(FileId);
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

    FileHandle->FilePointer = NewPosition.LowPart;
    return ESUCCESS;
}
