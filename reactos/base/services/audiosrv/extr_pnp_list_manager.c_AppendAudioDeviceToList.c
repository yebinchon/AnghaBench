
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; scalar_t__ max_size; int device_count; } ;
struct TYPE_5__ {int path; } ;
typedef TYPE_1__ PnP_AudioDevice ;
typedef int BOOL ;


 int FALSE ;
 int LockAudioDeviceList () ;
 int TRUE ;
 int UnlockAudioDeviceList () ;
 scalar_t__ WideStringSize (int ) ;
 TYPE_3__* audio_device_list ;
 int logmsg (char*) ;
 int memcpy (char*,TYPE_1__*,int) ;

BOOL
AppendAudioDeviceToList(PnP_AudioDevice* device)
{
    int device_info_size;


    device_info_size = sizeof(PnP_AudioDevice);
    device_info_size += WideStringSize(device->path);

    LockAudioDeviceList();







    if (audio_device_list->size + device_info_size > audio_device_list->max_size)
    {


        UnlockAudioDeviceList();

        return FALSE;
    }


    memcpy((char*)audio_device_list + audio_device_list->size,
           device,
           device_info_size);


    audio_device_list->device_count ++;
    audio_device_list->size += device_info_size;

    UnlockAudioDeviceList();

    logmsg("Device added to list\n");

    return TRUE;
}
