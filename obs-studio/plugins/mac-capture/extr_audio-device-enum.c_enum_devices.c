
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int enum_device_proc_t ;
typedef int UInt32 ;
struct TYPE_4__ {int member_2; int member_1; int member_0; } ;
typedef int OSStatus ;
typedef TYPE_1__ AudioObjectPropertyAddress ;
typedef int AudioDeviceID ;


 int AudioObjectGetPropertyData (int ,TYPE_1__*,int ,int *,int*,int *) ;
 int AudioObjectGetPropertyDataSize (int ,TYPE_1__*,int ,int *,int*) ;
 int bfree (int *) ;
 int * bmalloc (int) ;
 int coreaudio_enum_device (int ,void*,int ) ;
 scalar_t__ enum_success (int ,char*) ;
 int kAudioHardwarePropertyDevices ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeGlobal ;
 int kAudioObjectSystemObject ;

__attribute__((used)) static void enum_devices(enum_device_proc_t proc, void *param)
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
 if (!enum_success(stat, "get kAudioObjectSystemObject data size"))
  return;

 ids = bmalloc(size);
 count = size / sizeof(AudioDeviceID);

 stat = AudioObjectGetPropertyData(kAudioObjectSystemObject, &addr, 0,
       ((void*)0), &size, ids);

 if (enum_success(stat, "get kAudioObjectSystemObject data"))
  for (UInt32 i = 0; i < count; i++)
   if (!coreaudio_enum_device(proc, param, ids[i]))
    break;

 bfree(ids);
}
