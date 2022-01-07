
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct coreaudio_data {int device_id; } ;
typedef int UInt32 ;
struct TYPE_3__ {int member_2; int member_1; int member_0; } ;
typedef int OSStatus ;
typedef TYPE_1__ AudioObjectPropertyAddress ;


 int AudioObjectAddPropertyListener (int ,TYPE_1__*,int ,struct coreaudio_data*) ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeGlobal ;
 int notification_callback ;

__attribute__((used)) static OSStatus add_listener(struct coreaudio_data *ca, UInt32 property)
{
 AudioObjectPropertyAddress addr = {property,
        kAudioObjectPropertyScopeGlobal,
        kAudioObjectPropertyElementMaster};

 return AudioObjectAddPropertyListener(ca->device_id, &addr,
           notification_callback, ca);
}
