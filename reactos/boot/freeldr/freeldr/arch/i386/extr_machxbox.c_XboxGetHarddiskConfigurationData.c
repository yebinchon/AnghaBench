
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_18__ {int Heads; int Sectors; int Cylinders; int BytesPerSector; } ;
struct TYPE_17__ {int Version; int Revision; int Count; TYPE_3__* PartialDescriptors; } ;
struct TYPE_16__ {int BytesPerSector; int SectorsPerTrack; int NumberOfHeads; int NumberOfCylinders; } ;
struct TYPE_13__ {int DataSize; } ;
struct TYPE_14__ {TYPE_1__ DeviceSpecificData; } ;
struct TYPE_15__ {TYPE_2__ u; int Type; } ;
typedef TYPE_4__* PVOID ;
typedef TYPE_5__* PCM_PARTIAL_RESOURCE_LIST ;
typedef TYPE_4__* PCM_DISK_GEOMETRY_DEVICE_DATA ;
typedef TYPE_7__ GEOMETRY ;
typedef int CM_PARTIAL_RESOURCE_LIST ;
typedef int CM_DISK_GEOMETRY_DEVICE_DATA ;


 int CmResourceTypeDeviceSpecific ;
 int ERR (char*) ;
 TYPE_5__* FrLdrHeapAlloc (int,int ) ;
 int FrLdrHeapFree (TYPE_5__*,int ) ;
 int TAG_HW_RESOURCE_LIST ;
 int TRACE (char*,int ,int ,int ,int ,int ) ;
 scalar_t__ XboxDiskGetDriveGeometry (int ,TYPE_7__*) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static
PCM_PARTIAL_RESOURCE_LIST
XboxGetHarddiskConfigurationData(UCHAR DriveNumber, ULONG* pSize)
{
    PCM_PARTIAL_RESOURCE_LIST PartialResourceList;
    PCM_DISK_GEOMETRY_DEVICE_DATA DiskGeometry;

    GEOMETRY Geometry;
    ULONG Size;




    *pSize = 0;


    Size = sizeof(CM_PARTIAL_RESOURCE_LIST) +
           sizeof(CM_DISK_GEOMETRY_DEVICE_DATA);
    PartialResourceList = FrLdrHeapAlloc(Size, TAG_HW_RESOURCE_LIST);
    if (PartialResourceList == ((void*)0))
    {
        ERR("Failed to allocate a full resource descriptor\n");
        return ((void*)0);
    }

    memset(PartialResourceList, 0, Size);
    PartialResourceList->Version = 1;
    PartialResourceList->Revision = 1;
    PartialResourceList->Count = 1;
    PartialResourceList->PartialDescriptors[0].Type =
        CmResourceTypeDeviceSpecific;


    PartialResourceList->PartialDescriptors[0].u.DeviceSpecificData.DataSize =
        sizeof(CM_DISK_GEOMETRY_DEVICE_DATA);


    DiskGeometry = (PVOID)(((ULONG_PTR)PartialResourceList) + sizeof(CM_PARTIAL_RESOURCE_LIST));




    if (XboxDiskGetDriveGeometry(DriveNumber, &Geometry))
    {
        DiskGeometry->BytesPerSector = Geometry.BytesPerSector;
        DiskGeometry->NumberOfCylinders = Geometry.Cylinders;
        DiskGeometry->SectorsPerTrack = Geometry.Sectors;
        DiskGeometry->NumberOfHeads = Geometry.Heads;
    }
    else
    {
        ERR("Reading disk geometry failed\n");
        FrLdrHeapFree(PartialResourceList, TAG_HW_RESOURCE_LIST);
        return ((void*)0);
    }
    TRACE("Disk %x: %u Cylinders  %u Heads  %u Sectors  %u Bytes\n",
          DriveNumber,
          DiskGeometry->NumberOfCylinders,
          DiskGeometry->NumberOfHeads,
          DiskGeometry->SectorsPerTrack,
          DiskGeometry->BytesPerSector);




    *pSize = Size;
    return PartialResourceList;
}
