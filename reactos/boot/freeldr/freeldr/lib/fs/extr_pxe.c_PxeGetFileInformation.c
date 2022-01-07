
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {int LowPart; } ;
struct TYPE_6__ {int LowPart; } ;
struct TYPE_8__ {TYPE_2__ CurrentAddress; TYPE_1__ EndingAddress; } ;
typedef TYPE_3__ FILEINFORMATION ;
typedef int ARC_STATUS ;


 int EBADF ;
 int ESUCCESS ;
 scalar_t__ NO_FILE ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int TRACE (char*,scalar_t__,int ,int ) ;
 int _FilePosition ;
 int _FileSize ;
 scalar_t__ _OpenFile ;

__attribute__((used)) static ARC_STATUS PxeGetFileInformation(ULONG FileId, FILEINFORMATION* Information)
{
    if (_OpenFile == NO_FILE || FileId != _OpenFile)
        return EBADF;

    RtlZeroMemory(Information, sizeof(*Information));
    Information->EndingAddress.LowPart = _FileSize;
    Information->CurrentAddress.LowPart = _FilePosition;

    TRACE("PxeGetFileInformation(%lu) -> FileSize = %lu, FilePointer = 0x%lx\n",
          FileId, Information->EndingAddress.LowPart, Information->CurrentAddress.LowPart);

    return ESUCCESS;
}
