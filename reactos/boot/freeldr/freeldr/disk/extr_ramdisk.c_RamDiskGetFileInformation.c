
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int QuadPart; } ;
struct TYPE_6__ {int QuadPart; } ;
struct TYPE_8__ {TYPE_2__ CurrentAddress; TYPE_1__ EndingAddress; } ;
typedef TYPE_3__ FILEINFORMATION ;
typedef int ARC_STATUS ;


 int ESUCCESS ;
 int RamDiskImageLength ;
 int RamDiskOffset ;
 int RtlZeroMemory (TYPE_3__*,int) ;

__attribute__((used)) static ARC_STATUS RamDiskGetFileInformation(ULONG FileId, FILEINFORMATION* Information)
{
    RtlZeroMemory(Information, sizeof(*Information));
    Information->EndingAddress.QuadPart = RamDiskImageLength;
    Information->CurrentAddress.QuadPart = RamDiskOffset;

    return ESUCCESS;
}
