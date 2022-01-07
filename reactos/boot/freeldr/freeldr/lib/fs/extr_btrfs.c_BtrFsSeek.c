
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* pbtrfs_file_info ;
typedef int ULONG ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_7__ {scalar_t__ position; TYPE_1__ inode; } ;
typedef int SEEKMODE ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int ARC_STATUS ;


 int ASSERT (int ) ;
 int EINVAL ;
 int ESUCCESS ;
 int FALSE ;
 TYPE_2__* FsGetDeviceSpecific (int ) ;



ARC_STATUS BtrFsSeek(ULONG FileId, LARGE_INTEGER *Position, SEEKMODE SeekMode)
{
    pbtrfs_file_info phandle = FsGetDeviceSpecific(FileId);
    LARGE_INTEGER NewPosition = *Position;

    switch (SeekMode)
    {
        case 129:
            break;
        case 128:
            NewPosition.QuadPart += phandle->position;
            break;
        default:
            ASSERT(FALSE);
            return EINVAL;
    }

    if (NewPosition.QuadPart >= phandle->inode.size)
        return EINVAL;

    phandle->position = NewPosition.QuadPart;
    return ESUCCESS;
}
