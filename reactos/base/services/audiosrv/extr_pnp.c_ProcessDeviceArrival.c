
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dbcc_name; } ;
typedef int PnP_AudioDevice ;
typedef int DWORD ;
typedef TYPE_1__ DEV_BROADCAST_DEVICEINTERFACE ;


 int AppendAudioDeviceToList (int *) ;
 int * CreateDeviceDescriptor (int ,int ) ;
 int DestroyDeviceDescriptor (int *) ;
 int NO_ERROR ;
 int TRUE ;

DWORD
ProcessDeviceArrival(DEV_BROADCAST_DEVICEINTERFACE* device)
{
    PnP_AudioDevice* list_node;
    list_node = CreateDeviceDescriptor(device->dbcc_name, TRUE);
    AppendAudioDeviceToList(list_node);
    DestroyDeviceDescriptor(list_node);

    return NO_ERROR;
}
