
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int path; int enabled; } ;
typedef TYPE_1__ VOID ;
typedef TYPE_1__ PnP_AudioDevice ;
typedef int BOOL ;


 int WideStringSize (int *) ;
 int logmsg (char*) ;
 TYPE_1__* malloc (int) ;
 int memcpy (int ,int *,int) ;

VOID*
CreateDeviceDescriptor(WCHAR* path, BOOL is_enabled)
{
    PnP_AudioDevice* device;

    int path_length = WideStringSize(path);
    int size = sizeof(PnP_AudioDevice) + path_length;



    device = malloc(size);
    if (! device)
    {
        logmsg("Failed to create a device descriptor (malloc fail)\n");
        return ((void*)0);
    }

    device->enabled = is_enabled;
    memcpy(device->path, path, path_length);

    return device;
}
