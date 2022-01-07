
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ ULONG ;
struct TYPE_5__ {int DeviceId; } ;
struct TYPE_4__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int BOOLEAN ;
typedef scalar_t__ ARC_STATUS ;


 scalar_t__ ArcRead (int ,void*,scalar_t__,scalar_t__*) ;
 scalar_t__ ArcSeek (int ,TYPE_1__*,int ) ;
 TYPE_2__* BtrFsInfo ;
 int ERR (char*,scalar_t__) ;
 scalar_t__ ESUCCESS ;
 int FALSE ;
 int SeekAbsolute ;
 int TRUE ;

__attribute__((used)) static BOOLEAN disk_read(u64 physical, void *dest, u32 count)
{
    LARGE_INTEGER Position;
    ULONG Count;
    ARC_STATUS Status;

    if (!dest)
        return FALSE;

    Position.QuadPart = physical;
    Status = ArcSeek(BtrFsInfo->DeviceId, &Position, SeekAbsolute);
    if (Status != ESUCCESS)
    {
        ERR("ArcSeek returned status %lu\n", Status);
        return FALSE;
    }

    Status = ArcRead(BtrFsInfo->DeviceId, dest, count, &Count);
    if (Status != ESUCCESS || Count != count)
    {
        ERR("ArcRead returned status %lu\n", Status);
        return FALSE;
    }

    return TRUE;
}
