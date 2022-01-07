
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SEEKMODE ;
typedef int LARGE_INTEGER ;
typedef int ARC_STATUS ;


 int EINVAL ;

__attribute__((used)) static ARC_STATUS PxeDiskSeek(ULONG FileId, LARGE_INTEGER* Position, SEEKMODE SeekMode)
{

    return EINVAL;
}
