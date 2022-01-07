
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int (* enum_device_proc_t ) (void*,int *,int *,int ) ;
typedef int UInt32 ;
struct TYPE_4__ {int mSelector; int member_2; int member_1; int member_0; } ;
typedef int OSStatus ;
typedef int * CFStringRef ;
typedef TYPE_1__ AudioObjectPropertyAddress ;
typedef int AudioDeviceID ;


 int AudioObjectGetPropertyData (int ,TYPE_1__*,int ,int *,int*,int **) ;
 int AudioObjectGetPropertyDataSize (int ,TYPE_1__*,int ,int *,int*) ;
 int CFRelease (int *) ;
 int enum_success (int ,char*) ;
 int kAudioDevicePropertyDeviceNameCFString ;
 int kAudioDevicePropertyDeviceUID ;
 int kAudioDevicePropertyScopeInput ;
 int kAudioDevicePropertyStreams ;
 int kAudioObjectPropertyElementMaster ;

__attribute__((used)) static bool coreaudio_enum_device(enum_device_proc_t proc, void *param,
      AudioDeviceID id)
{
 UInt32 size = 0;
 CFStringRef cf_name = ((void*)0);
 CFStringRef cf_uid = ((void*)0);
 bool enum_next = 1;
 OSStatus stat;

 AudioObjectPropertyAddress addr = {kAudioDevicePropertyStreams,
        kAudioDevicePropertyScopeInput,
        kAudioObjectPropertyElementMaster};


 AudioObjectGetPropertyDataSize(id, &addr, 0, ((void*)0), &size);
 if (!size)
  return 1;

 size = sizeof(CFStringRef);

 addr.mSelector = kAudioDevicePropertyDeviceUID;
 stat = AudioObjectGetPropertyData(id, &addr, 0, ((void*)0), &size, &cf_uid);
 if (!enum_success(stat, "get audio device UID"))
  return 1;

 addr.mSelector = kAudioDevicePropertyDeviceNameCFString;
 stat = AudioObjectGetPropertyData(id, &addr, 0, ((void*)0), &size, &cf_name);
 if (!enum_success(stat, "get audio device name"))
  goto fail;

 enum_next = proc(param, cf_name, cf_uid, id);

fail:
 if (cf_name)
  CFRelease(cf_name);
 if (cf_uid)
  CFRelease(cf_uid);
 return enum_next;
}
