
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPVOID ;
typedef int DWORD ;
typedef int DEV_BROADCAST_DEVICEINTERFACE ;



 int NO_ERROR ;
 int ProcessDeviceArrival (int *) ;

DWORD
HandleDeviceEvent(
    DWORD dwEventType,
    LPVOID lpEventData)
{
    switch (dwEventType)
    {
        case 128:
        {
            DEV_BROADCAST_DEVICEINTERFACE* incoming_device =
                (DEV_BROADCAST_DEVICEINTERFACE*)lpEventData;

            return ProcessDeviceArrival(incoming_device);
        }

        default :
        {
            break;
        }
    }

    return NO_ERROR;
}
