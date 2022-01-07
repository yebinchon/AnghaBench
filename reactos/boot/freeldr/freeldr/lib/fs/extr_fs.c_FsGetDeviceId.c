
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_2__ {size_t DeviceId; } ;


 TYPE_1__* FileData ;
 size_t MAX_FDS ;

ULONG FsGetDeviceId(ULONG FileId)
{
    if (FileId >= MAX_FDS)
        return (ULONG)-1;
    return FileData[FileId].DeviceId;
}
