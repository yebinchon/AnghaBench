
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_14__ {int Channel; scalar_t__ Port; } ;
struct TYPE_13__ {int Level; int Vector; int Affinity; } ;
struct TYPE_11__ {int LowPart; int HighPart; } ;
struct TYPE_12__ {int Length; TYPE_1__ Start; } ;
struct TYPE_15__ {TYPE_4__ Dma; TYPE_3__ Interrupt; TYPE_2__ Port; } ;
struct TYPE_17__ {TYPE_5__ u; scalar_t__ Flags; void* ShareDisposition; int Type; } ;
struct TYPE_16__ {int Version; int Revision; int Count; TYPE_7__* PartialDescriptors; } ;
typedef int * PCONFIGURATION_COMPONENT_DATA ;
typedef TYPE_6__* PCM_PARTIAL_RESOURCE_LIST ;
typedef TYPE_7__* PCM_PARTIAL_RESOURCE_DESCRIPTOR ;
typedef int CM_PARTIAL_RESOURCE_LIST ;
typedef int CM_PARTIAL_RESOURCE_DESCRIPTOR ;


 scalar_t__ CM_RESOURCE_INTERRUPT_LATCHED ;
 scalar_t__ CM_RESOURCE_PORT_IO ;
 void* CmResourceShareDeviceExclusive ;
 void* CmResourceShareUndetermined ;
 int CmResourceTypeDma ;
 int CmResourceTypeInterrupt ;
 int CmResourceTypePort ;
 int ControllerClass ;
 int DetectBiosFloppyPeripheral (int *) ;
 int DiskController ;
 int ERR (char*) ;
 int FldrCreateComponentKey (int *,int ,int ,int,int,int,int *,TYPE_6__*,int,int **) ;
 TYPE_6__* FrLdrHeapAlloc (int,int ) ;
 int Input ;
 int MachGetFloppyCount () ;
 int Output ;
 int TAG_HW_RESOURCE_LIST ;
 int TRACE (char*,...) ;
 int memset (TYPE_6__*,int ,int) ;

__attribute__((used)) static
PCONFIGURATION_COMPONENT_DATA
DetectBiosFloppyController(PCONFIGURATION_COMPONENT_DATA BusKey)
{
    PCONFIGURATION_COMPONENT_DATA ControllerKey;
    PCM_PARTIAL_RESOURCE_LIST PartialResourceList;
    PCM_PARTIAL_RESOURCE_DESCRIPTOR PartialDescriptor;
    ULONG Size;
    ULONG FloppyCount;

    FloppyCount = MachGetFloppyCount();
    TRACE("Floppy count: %u\n", FloppyCount);


    Size = sizeof(CM_PARTIAL_RESOURCE_LIST) +
           2 * sizeof(CM_PARTIAL_RESOURCE_DESCRIPTOR);
    PartialResourceList = FrLdrHeapAlloc(Size, TAG_HW_RESOURCE_LIST);
    if (PartialResourceList == ((void*)0))
    {
        ERR("Failed to allocate resource descriptor\n");
        return ((void*)0);
    }
    memset(PartialResourceList, 0, Size);


    PartialResourceList->Version = 1;
    PartialResourceList->Revision = 1;
    PartialResourceList->Count = 3;


    PartialDescriptor = &PartialResourceList->PartialDescriptors[0];
    PartialDescriptor->Type = CmResourceTypePort;
    PartialDescriptor->ShareDisposition = CmResourceShareDeviceExclusive;
    PartialDescriptor->Flags = CM_RESOURCE_PORT_IO;
    PartialDescriptor->u.Port.Start.LowPart = 0x03F0;
    PartialDescriptor->u.Port.Start.HighPart = 0x0;
    PartialDescriptor->u.Port.Length = 8;


    PartialDescriptor = &PartialResourceList->PartialDescriptors[1];
    PartialDescriptor->Type = CmResourceTypeInterrupt;
    PartialDescriptor->ShareDisposition = CmResourceShareUndetermined;
    PartialDescriptor->Flags = CM_RESOURCE_INTERRUPT_LATCHED;
    PartialDescriptor->u.Interrupt.Level = 6;
    PartialDescriptor->u.Interrupt.Vector = 6;
    PartialDescriptor->u.Interrupt.Affinity = 0xFFFFFFFF;


    PartialDescriptor = &PartialResourceList->PartialDescriptors[2];
    PartialDescriptor->Type = CmResourceTypeDma;
    PartialDescriptor->ShareDisposition = CmResourceShareUndetermined;
    PartialDescriptor->Flags = 0;
    PartialDescriptor->u.Dma.Channel = 2;
    PartialDescriptor->u.Dma.Port = 0;


    FldrCreateComponentKey(BusKey,
                           ControllerClass,
                           DiskController,
                           Output | Input,
                           0x0,
                           0xFFFFFFFF,
                           ((void*)0),
                           PartialResourceList,
                           Size,
                           &ControllerKey);
    TRACE("Created key: DiskController\\0\n");

    if (FloppyCount)
        DetectBiosFloppyPeripheral(ControllerKey);

    return ControllerKey;
}
