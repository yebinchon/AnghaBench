
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* ULONGLONG ;
typedef scalar_t__ ULONG ;
typedef void* UCHAR ;
struct TYPE_17__ {scalar_t__ SectorNumber; void* SectorCount; void* SectorOffset; scalar_t__ SectorSize; void* Lun; void* TargetId; void* PathId; TYPE_4__* DeviceExtension; } ;
struct TYPE_12__ {int OperationCode; } ;
struct TYPE_16__ {TYPE_1__ CDB10; } ;
struct TYPE_15__ {scalar_t__ BusNum; } ;
struct TYPE_14__ {int Length; int CdbLength; int DataTransferLength; int TimeOutValue; scalar_t__ Cdb; TYPE_2__* DataBuffer; int SrbFlags; void* Lun; void* TargetId; void* PathId; int Function; } ;
struct TYPE_13__ {int BytesPerBlock; int LogicalBlockAddress; } ;
typedef int SCSI_REQUEST_BLOCK ;
typedef TYPE_2__ READ_CAPACITY_DATA ;
typedef TYPE_3__* PSCSI_REQUEST_BLOCK ;
typedef TYPE_4__* PSCSI_PORT_DEVICE_EXTENSION ;
typedef TYPE_5__* PCDB ;
typedef int OPENMODE ;
typedef TYPE_6__ DISKCONTEXT ;
typedef int CHAR ;
typedef int ARC_STATUS ;


 int DissectArcPath2 (int *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ESUCCESS ;
 void* ExAllocatePool (int ,int) ;
 int FsSetDeviceSpecific (scalar_t__,TYPE_6__*) ;
 int PagedPool ;
 int RtlZeroMemory (TYPE_3__*,int) ;
 int SCSIOP_READ_CAPACITY ;
 int SRB_FLAGS_DATA_IN ;
 int SRB_FUNCTION_EXECUTE_SCSI ;
 TYPE_4__** ScsiDeviceExtensions ;
 int SpiSendSynchronousSrb (TYPE_4__*,TYPE_3__*) ;
 int UNIMPLEMENTED ;
 void* ntohl (int ) ;

__attribute__((used)) static ARC_STATUS DiskOpen(CHAR* Path, OPENMODE OpenMode, ULONG* FileId)
{
    PSCSI_REQUEST_BLOCK Srb;
    PCDB Cdb;
    READ_CAPACITY_DATA ReadCapacityBuffer;

    DISKCONTEXT* Context;
    PSCSI_PORT_DEVICE_EXTENSION DeviceExtension;
    ULONG ScsiBus, PathId, TargetId, Lun, Partition, PathSyntax;
    ULONG SectorSize;
    ULONGLONG SectorOffset = 0;
    ULONGLONG SectorCount;


    if (!DissectArcPath2(Path, &ScsiBus, &TargetId, &Lun, &Partition, &PathSyntax))
        return EINVAL;
    if (PathSyntax != 0)
        return EINVAL;
    DeviceExtension = ScsiDeviceExtensions[ScsiBus];
    PathId = ScsiBus - DeviceExtension->BusNum;


    Srb = ExAllocatePool(PagedPool, sizeof(SCSI_REQUEST_BLOCK));
    if (!Srb)
        return ENOMEM;
    RtlZeroMemory(Srb, sizeof(SCSI_REQUEST_BLOCK));
    Srb->Length = sizeof(SCSI_REQUEST_BLOCK);
    Srb->Function = SRB_FUNCTION_EXECUTE_SCSI;
    Srb->PathId = (UCHAR)PathId;
    Srb->TargetId = (UCHAR)TargetId;
    Srb->Lun = (UCHAR)Lun;
    Srb->CdbLength = 10;
    Srb->SrbFlags = SRB_FLAGS_DATA_IN;
    Srb->DataTransferLength = sizeof(READ_CAPACITY_DATA);
    Srb->TimeOutValue = 5;
    Srb->DataBuffer = &ReadCapacityBuffer;
    Cdb = (PCDB)Srb->Cdb;
    Cdb->CDB10.OperationCode = SCSIOP_READ_CAPACITY;
    if (!SpiSendSynchronousSrb(DeviceExtension, Srb))
    {
        return EIO;
    }


    SectorCount = ntohl(ReadCapacityBuffer.LogicalBlockAddress);
    SectorSize = ntohl(ReadCapacityBuffer.BytesPerBlock);

    if (Partition != 0)
    {

        UNIMPLEMENTED;
        return EIO;
    }

    Context = ExAllocatePool(PagedPool, sizeof(DISKCONTEXT));
    if (!Context)
        return ENOMEM;
    Context->DeviceExtension = DeviceExtension;
    Context->PathId = (UCHAR)PathId;
    Context->TargetId = (UCHAR)TargetId;
    Context->Lun = (UCHAR)Lun;
    Context->SectorSize = SectorSize;
    Context->SectorOffset = SectorOffset;
    Context->SectorCount = SectorCount;
    Context->SectorNumber = 0;
    FsSetDeviceSpecific(*FileId, Context);

    return ESUCCESS;
}
