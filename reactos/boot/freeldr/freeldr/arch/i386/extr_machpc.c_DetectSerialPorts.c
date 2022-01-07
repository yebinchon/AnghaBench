
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG ;
struct TYPE_15__ {int DataSize; } ;
struct TYPE_14__ {int Affinity; scalar_t__ Vector; scalar_t__ Level; } ;
struct TYPE_12__ {int HighPart; scalar_t__ LowPart; } ;
struct TYPE_13__ {int Length; TYPE_1__ Start; } ;
struct TYPE_16__ {TYPE_4__ DeviceSpecificData; TYPE_3__ Interrupt; TYPE_2__ Port; } ;
struct TYPE_19__ {TYPE_5__ u; scalar_t__ Flags; void* ShareDisposition; int Type; } ;
struct TYPE_18__ {int Version; int Revision; int Count; TYPE_8__* PartialDescriptors; } ;
struct TYPE_17__ {int BaudClock; } ;
typedef int PCONFIGURATION_COMPONENT_DATA ;
typedef TYPE_6__* PCM_SERIAL_DEVICE_DATA ;
typedef TYPE_7__* PCM_PARTIAL_RESOURCE_LIST ;
typedef TYPE_8__* PCM_PARTIAL_RESOURCE_DESCRIPTOR ;
typedef scalar_t__ (* GET_SERIAL_PORT ) (scalar_t__,scalar_t__*) ;
typedef int CM_SERIAL_DEVICE_DATA ;
typedef int CM_PARTIAL_RESOURCE_LIST ;
typedef int CM_PARTIAL_RESOURCE_DESCRIPTOR ;
typedef int CHAR ;


 scalar_t__ CM_RESOURCE_INTERRUPT_LATCHED ;
 scalar_t__ CM_RESOURCE_PORT_IO ;
 void* CmResourceShareDeviceExclusive ;
 void* CmResourceShareUndetermined ;
 int CmResourceTypeDeviceSpecific ;
 int CmResourceTypeInterrupt ;
 int CmResourceTypePort ;
 int ConsoleIn ;
 int ConsoleOut ;
 int ControllerClass ;
 int CpDoesPortExist (int ) ;
 int DetectSerialPointerPeripheral (int ,int ) ;
 int ERR (char*) ;
 int FldrCreateComponentKey (int ,int ,int ,int,scalar_t__,int,int *,TYPE_7__*,scalar_t__,int *) ;
 TYPE_7__* FrLdrHeapAlloc (scalar_t__,int ) ;
 int Input ;
 int Output ;
 int Rs232PortInUse (int ) ;
 int SerialController ;
 int TAG_HW_RESOURCE_LIST ;
 int TRACE (char*,...) ;
 int UlongToPtr (scalar_t__) ;
 int memset (TYPE_7__*,int ,scalar_t__) ;
 int sprintf (int *,char*,scalar_t__) ;

VOID
DetectSerialPorts(PCONFIGURATION_COMPONENT_DATA BusKey, GET_SERIAL_PORT MachGetSerialPort, ULONG Count)
{
    PCM_PARTIAL_RESOURCE_LIST PartialResourceList;
    PCM_PARTIAL_RESOURCE_DESCRIPTOR PartialDescriptor;
    PCM_SERIAL_DEVICE_DATA SerialDeviceData;
    ULONG Irq;
    ULONG Base;
    CHAR Buffer[80];
    ULONG ControllerNumber = 0;
    PCONFIGURATION_COMPONENT_DATA ControllerKey;
    ULONG i;
    ULONG Size;

    TRACE("DetectSerialPorts()\n");

    for (i = 0; i < Count; i++)
    {
        Base = MachGetSerialPort(i, &Irq);
        if ((Base == 0) || !CpDoesPortExist(UlongToPtr(Base)))
            continue;

        TRACE("Found COM%u port at 0x%x\n", i + 1, Base);


        sprintf(Buffer, "COM%ld", i + 1);


        Size = sizeof(CM_PARTIAL_RESOURCE_LIST) +
               2 * sizeof(CM_PARTIAL_RESOURCE_DESCRIPTOR) +
               sizeof(CM_SERIAL_DEVICE_DATA);
        PartialResourceList = FrLdrHeapAlloc(Size, TAG_HW_RESOURCE_LIST);
        if (PartialResourceList == ((void*)0))
        {
            ERR("Failed to allocate resource descriptor\n");
            continue;
        }
        memset(PartialResourceList, 0, Size);


        PartialResourceList->Version = 1;
        PartialResourceList->Revision = 1;
        PartialResourceList->Count = 3;


        PartialDescriptor = &PartialResourceList->PartialDescriptors[0];
        PartialDescriptor->Type = CmResourceTypePort;
        PartialDescriptor->ShareDisposition = CmResourceShareDeviceExclusive;
        PartialDescriptor->Flags = CM_RESOURCE_PORT_IO;
        PartialDescriptor->u.Port.Start.LowPart = Base;
        PartialDescriptor->u.Port.Start.HighPart = 0x0;
        PartialDescriptor->u.Port.Length = 7;


        PartialDescriptor = &PartialResourceList->PartialDescriptors[1];
        PartialDescriptor->Type = CmResourceTypeInterrupt;
        PartialDescriptor->ShareDisposition = CmResourceShareUndetermined;
        PartialDescriptor->Flags = CM_RESOURCE_INTERRUPT_LATCHED;
        PartialDescriptor->u.Interrupt.Level = Irq;
        PartialDescriptor->u.Interrupt.Vector = Irq;
        PartialDescriptor->u.Interrupt.Affinity = 0xFFFFFFFF;


        PartialDescriptor = &PartialResourceList->PartialDescriptors[2];
        PartialDescriptor->Type = CmResourceTypeDeviceSpecific;
        PartialDescriptor->ShareDisposition = CmResourceShareUndetermined;
        PartialDescriptor->Flags = 0;
        PartialDescriptor->u.DeviceSpecificData.DataSize = sizeof(CM_SERIAL_DEVICE_DATA);

        SerialDeviceData =
            (PCM_SERIAL_DEVICE_DATA)&PartialResourceList->PartialDescriptors[3];
        SerialDeviceData->BaudClock = 1843200;


        FldrCreateComponentKey(BusKey,
                               ControllerClass,
                               SerialController,
                               Output | Input | ConsoleIn | ConsoleOut,
                               ControllerNumber,
                               0xFFFFFFFF,
                               Buffer,
                               PartialResourceList,
                               Size,
                               &ControllerKey);

        if (!Rs232PortInUse(UlongToPtr(Base)))
        {

            DetectSerialPointerPeripheral(ControllerKey, UlongToPtr(Base));
        }

        ControllerNumber++;
    }
}
