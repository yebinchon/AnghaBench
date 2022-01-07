
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int obs_enum_audio_device_cb ;
typedef int UInt32 ;
struct TYPE_4__ {int member_2; int member_1; int member_0; } ;
typedef int OSStatus ;
typedef TYPE_1__ AudioObjectPropertyAddress ;
typedef int AudioDeviceID ;


 int AudioObjectGetPropertyData (int ,TYPE_1__*,int ,int *,int*,int *) ;
 int AudioObjectGetPropertyDataSize (int ,TYPE_1__*,int ,int *,int*) ;
 int free (int *) ;
 int kAudioHardwarePropertyDevices ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeGlobal ;
 int kAudioObjectSystemObject ;
 int * malloc (int) ;
 int obs_enum_audio_monitoring_device (int ,void*,int ,int) ;
 scalar_t__ success (int ,char*) ;

__attribute__((used)) static void enum_audio_devices(obs_enum_audio_device_cb cb, void *data,
          bool allow_inputs)
{
 AudioObjectPropertyAddress addr = {kAudioHardwarePropertyDevices,
        kAudioObjectPropertyScopeGlobal,
        kAudioObjectPropertyElementMaster};

 UInt32 size = 0;
 UInt32 count;
 OSStatus stat;
 AudioDeviceID *ids;

 stat = AudioObjectGetPropertyDataSize(kAudioObjectSystemObject, &addr,
           0, ((void*)0), &size);
 if (!success(stat, "get data size"))
  return;

 ids = malloc(size);
 count = size / sizeof(AudioDeviceID);

 stat = AudioObjectGetPropertyData(kAudioObjectSystemObject, &addr, 0,
       ((void*)0), &size, ids);
 if (success(stat, "get data")) {
  for (UInt32 i = 0; i < count; i++) {
   if (!obs_enum_audio_monitoring_device(cb, data, ids[i],
             allow_inputs))
    break;
  }
 }

 free(ids);
}
