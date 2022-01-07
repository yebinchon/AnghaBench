
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int SectorNumber; int SectorSize; int SectorCount; } ;
struct TYPE_5__ {int QuadPart; } ;
typedef int SEEKMODE ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_2__ DISKCONTEXT ;
typedef int ARC_STATUS ;


 int ASSERT (int ) ;
 int EINVAL ;
 int ESUCCESS ;
 int FALSE ;
 TYPE_2__* FsGetDeviceSpecific (int ) ;



__attribute__((used)) static ARC_STATUS
DiskSeek(ULONG FileId, LARGE_INTEGER* Position, SEEKMODE SeekMode)
{
    DISKCONTEXT* Context = FsGetDeviceSpecific(FileId);
    LARGE_INTEGER NewPosition = *Position;

    switch (SeekMode)
    {
        case 129:
            break;
        case 128:
            NewPosition.QuadPart += (Context->SectorNumber * Context->SectorSize);
            break;
        default:
            ASSERT(FALSE);
            return EINVAL;
    }

    if (NewPosition.QuadPart & (Context->SectorSize - 1))
        return EINVAL;


    NewPosition.QuadPart /= Context->SectorSize;


    if (Context->SectorCount != 0 && NewPosition.QuadPart >= Context->SectorCount)
        return EINVAL;

    Context->SectorNumber = NewPosition.QuadPart;
    return ESUCCESS;
}
