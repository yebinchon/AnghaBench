
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PCONFIGURATION_COMPONENT_DATA ;


 int FldrCreateSystemKey (int *) ;
 int OfwCopyDeviceTree (int ,char*,int,int *,int *,int *) ;
 int ofw_finddevice (char*) ;

PCONFIGURATION_COMPONENT_DATA PpcHwDetect() {
    PCONFIGURATION_COMPONENT_DATA RootKey;
    ULONG BusNumber = 0, DiskController = 0, DiskNumber = 0;
    int node = ofw_finddevice("/");

    FldrCreateSystemKey(&RootKey);

    OfwCopyDeviceTree(RootKey,"/",node,&BusNumber,&DiskController,&DiskNumber);
    return RootKey;
}
