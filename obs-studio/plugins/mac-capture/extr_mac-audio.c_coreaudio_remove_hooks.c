
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct coreaudio_data {int unit; scalar_t__ default_device; int device_id; } ;
typedef int callback_info ;
struct TYPE_6__ {int * inputProcRefCon; int * inputProc; } ;
struct TYPE_5__ {int mSelector; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ AudioObjectPropertyAddress ;
typedef TYPE_2__ AURenderCallbackStruct ;


 int AudioObjectRemovePropertyListener (int ,TYPE_1__*,int ,struct coreaudio_data*) ;
 int PROPERTY_DEFAULT_DEVICE ;
 int PROPERTY_FORMATS ;
 int SCOPE_GLOBAL ;
 int kAudioDevicePropertyDeviceIsAlive ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeGlobal ;
 int kAudioObjectSystemObject ;
 int kAudioOutputUnitProperty_SetInputCallback ;
 int notification_callback ;
 int set_property (int ,int ,int ,int ,TYPE_2__*,int) ;

__attribute__((used)) static void coreaudio_remove_hooks(struct coreaudio_data *ca)
{
 AURenderCallbackStruct callback_info = {.inputProc = ((void*)0),
      .inputProcRefCon = ((void*)0)};

 AudioObjectPropertyAddress addr = {kAudioDevicePropertyDeviceIsAlive,
        kAudioObjectPropertyScopeGlobal,
        kAudioObjectPropertyElementMaster};

 AudioObjectRemovePropertyListener(ca->device_id, &addr,
       notification_callback, ca);

 addr.mSelector = PROPERTY_FORMATS;
 AudioObjectRemovePropertyListener(ca->device_id, &addr,
       notification_callback, ca);

 if (ca->default_device) {
  addr.mSelector = PROPERTY_DEFAULT_DEVICE;
  AudioObjectRemovePropertyListener(kAudioObjectSystemObject,
        &addr, notification_callback,
        ca);
 }

 set_property(ca->unit, kAudioOutputUnitProperty_SetInputCallback,
       SCOPE_GLOBAL, 0, &callback_info, sizeof(callback_info));
}
