
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {scalar_t__ Offset; TYPE_1__* DataContext; } ;
struct TYPE_6__ {int Record; } ;
typedef int SEEKMODE ;
typedef TYPE_2__* PNTFS_FILE_HANDLE ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int ARC_STATUS ;


 int ASSERT (int ) ;
 int EINVAL ;
 int ESUCCESS ;
 int FALSE ;
 TYPE_2__* FsGetDeviceSpecific (int ) ;
 scalar_t__ NtfsGetAttributeSize (int *) ;



ARC_STATUS NtfsSeek(ULONG FileId, LARGE_INTEGER* Position, SEEKMODE SeekMode)
{
    PNTFS_FILE_HANDLE FileHandle = FsGetDeviceSpecific(FileId);
    LARGE_INTEGER NewPosition = *Position;

    switch (SeekMode)
    {
        case 129:
            break;
        case 128:
            NewPosition.QuadPart += FileHandle->Offset;
            break;
        default:
            ASSERT(FALSE);
            return EINVAL;
    }

    if (NewPosition.QuadPart >= NtfsGetAttributeSize(&FileHandle->DataContext->Record))
        return EINVAL;

    FileHandle->Offset = NewPosition.QuadPart;
    return ESUCCESS;
}
