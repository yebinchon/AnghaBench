
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int id ;
typedef int UInt32 ;
struct TYPE_3__ {int member_2; int member_1; int member_0; } ;
typedef int OSStatus ;
typedef TYPE_1__ AudioObjectPropertyAddress ;
typedef int AudioDeviceID ;


 int AudioObjectGetPropertyData (int ,TYPE_1__*,int ,int *,int*,int *) ;
 int alloc_default_id ;
 char* bzalloc (int) ;
 int kAudioHardwarePropertyDefaultSystemOutputDevice ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeGlobal ;
 int kAudioObjectSystemObject ;
 int obs_enum_audio_monitoring_device (int ,char**,int ,int) ;
 scalar_t__ success (int ,char*) ;

__attribute__((used)) static void get_default_id(char **p_id)
{
 AudioObjectPropertyAddress addr = {
  kAudioHardwarePropertyDefaultSystemOutputDevice,
  kAudioObjectPropertyScopeGlobal,
  kAudioObjectPropertyElementMaster};

 if (*p_id)
  return;

 OSStatus stat;
 AudioDeviceID id = 0;
 UInt32 size = sizeof(id);

 stat = AudioObjectGetPropertyData(kAudioObjectSystemObject, &addr, 0,
       ((void*)0), &size, &id);
 if (success(stat, "AudioObjectGetPropertyData"))
  obs_enum_audio_monitoring_device(alloc_default_id, p_id, id,
       1);
 if (!*p_id)
  *p_id = bzalloc(1);
}
