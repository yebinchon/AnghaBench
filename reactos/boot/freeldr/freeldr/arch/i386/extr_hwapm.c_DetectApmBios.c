
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_5__ {scalar_t__ Count; scalar_t__ Revision; scalar_t__ Version; } ;
typedef int PCONFIGURATION_COMPONENT_DATA ;
typedef TYPE_1__* PCM_PARTIAL_RESOURCE_LIST ;
typedef int CM_PARTIAL_RESOURCE_LIST ;
typedef int CM_PARTIAL_RESOURCE_DESCRIPTOR ;


 int AdapterClass ;
 scalar_t__ FindApmBios () ;
 int FldrCreateComponentKey (int ,int ,int ,int,int,int,char*,TYPE_1__*,int,int *) ;
 TYPE_1__* FrLdrHeapAlloc (int,int ) ;
 int MultiFunctionAdapter ;
 int TAG_HW_RESOURCE_LIST ;
 int memset (TYPE_1__*,int ,int) ;

VOID
DetectApmBios(PCONFIGURATION_COMPONENT_DATA SystemKey, ULONG *BusNumber)
{
    PCONFIGURATION_COMPONENT_DATA BiosKey;
    PCM_PARTIAL_RESOURCE_LIST PartialResourceList;
    ULONG Size;

    Size = sizeof(CM_PARTIAL_RESOURCE_LIST) -
           sizeof(CM_PARTIAL_RESOURCE_DESCRIPTOR);

    if (FindApmBios())
    {

        PartialResourceList = FrLdrHeapAlloc(Size, TAG_HW_RESOURCE_LIST);
        memset(PartialResourceList, 0, Size);
        PartialResourceList->Version = 0;
        PartialResourceList->Revision = 0;
        PartialResourceList->Count = 0;


        FldrCreateComponentKey(SystemKey,
                               AdapterClass,
                               MultiFunctionAdapter,
                               0x0,
                               0x0,
                               0xFFFFFFFF,
                               "APM",
                               PartialResourceList,
                               Size,
                               &BiosKey);


        (*BusNumber)++;
    }


}
