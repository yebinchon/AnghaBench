
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_13__ {int SectorOffset; int SectorSize; int SectorCount; int SectorNumber; } ;
struct TYPE_9__ {int QuadPart; } ;
struct TYPE_11__ {int QuadPart; } ;
struct TYPE_10__ {int QuadPart; } ;
struct TYPE_12__ {TYPE_1__ CurrentAddress; TYPE_3__ EndingAddress; TYPE_2__ StartingAddress; } ;
typedef TYPE_4__ FILEINFORMATION ;
typedef TYPE_5__ DISKCONTEXT ;
typedef int ARC_STATUS ;


 int ESUCCESS ;
 TYPE_5__* FsGetDeviceSpecific (int ) ;
 int RtlZeroMemory (TYPE_4__*,int) ;

__attribute__((used)) static ARC_STATUS
DiskGetFileInformation(ULONG FileId, FILEINFORMATION* Information)
{
    DISKCONTEXT* Context = FsGetDeviceSpecific(FileId);

    RtlZeroMemory(Information, sizeof(*Information));







    Information->StartingAddress.QuadPart = Context->SectorOffset * Context->SectorSize;
    Information->EndingAddress.QuadPart = (Context->SectorOffset + Context->SectorCount) * Context->SectorSize;
    Information->CurrentAddress.QuadPart = Context->SectorNumber * Context->SectorSize;

    return ESUCCESS;
}
