
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef int SEEKMODE ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int ARC_STATUS ;


 int ASSERT (int ) ;
 int EINVAL ;
 int ESUCCESS ;
 int FALSE ;
 scalar_t__ RamDiskImageLength ;
 scalar_t__ RamDiskOffset ;



__attribute__((used)) static ARC_STATUS RamDiskSeek(ULONG FileId, LARGE_INTEGER* Position, SEEKMODE SeekMode)
{
    LARGE_INTEGER NewPosition = *Position;

    switch (SeekMode)
    {
        case 129:
            break;
        case 128:
            NewPosition.QuadPart += RamDiskOffset;
            break;
        default:
            ASSERT(FALSE);
            return EINVAL;
    }

    if (NewPosition.QuadPart >= RamDiskImageLength)
        return EINVAL;

    RamDiskOffset = NewPosition.QuadPart;
    return ESUCCESS;
}
