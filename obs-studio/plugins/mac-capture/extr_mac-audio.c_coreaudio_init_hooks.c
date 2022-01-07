
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct coreaudio_data {int unit; scalar_t__ default_device; } ;
typedef int callback_info ;
struct TYPE_6__ {struct coreaudio_data* inputProcRefCon; int inputProc; } ;
struct TYPE_5__ {int member_2; int member_1; int member_0; } ;
typedef int OSStatus ;
typedef TYPE_1__ AudioObjectPropertyAddress ;
typedef TYPE_2__ AURenderCallbackStruct ;


 int AudioObjectAddPropertyListener (int ,TYPE_1__*,int ,struct coreaudio_data*) ;
 int PROPERTY_DEFAULT_DEVICE ;
 int PROPERTY_FORMATS ;
 int SCOPE_GLOBAL ;
 int add_listener (struct coreaudio_data*,int ) ;
 int ca_success (int ,struct coreaudio_data*,char*,char*) ;
 int input_callback ;
 int kAudioDevicePropertyDeviceIsAlive ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeGlobal ;
 int kAudioObjectSystemObject ;
 int kAudioOutputUnitProperty_SetInputCallback ;
 int notification_callback ;
 int set_property (int ,int ,int ,int ,TYPE_2__*,int) ;

__attribute__((used)) static bool coreaudio_init_hooks(struct coreaudio_data *ca)
{
 OSStatus stat;
 AURenderCallbackStruct callback_info = {.inputProc = input_callback,
      .inputProcRefCon = ca};

 stat = add_listener(ca, kAudioDevicePropertyDeviceIsAlive);
 if (!ca_success(stat, ca, "coreaudio_init_hooks",
   "set disconnect callback"))
  return 0;

 stat = add_listener(ca, PROPERTY_FORMATS);
 if (!ca_success(stat, ca, "coreaudio_init_hooks",
   "set format change callback"))
  return 0;

 if (ca->default_device) {
  AudioObjectPropertyAddress addr = {
   PROPERTY_DEFAULT_DEVICE,
   kAudioObjectPropertyScopeGlobal,
   kAudioObjectPropertyElementMaster};

  stat = AudioObjectAddPropertyListener(kAudioObjectSystemObject,
            &addr,
            notification_callback,
            ca);
  if (!ca_success(stat, ca, "coreaudio_init_hooks",
    "set device change callback"))
   return 0;
 }

 stat = set_property(ca->unit, kAudioOutputUnitProperty_SetInputCallback,
       SCOPE_GLOBAL, 0, &callback_info,
       sizeof(callback_info));
 if (!ca_success(stat, ca, "coreaudio_init_hooks", "set input callback"))
  return 0;

 return 1;
}
