
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct coreaudio_data {int default_device; int no_devices; int device_id; scalar_t__ device_uid; scalar_t__ input; } ;
typedef int UInt32 ;
struct TYPE_3__ {int mSelector; int mElement; int mScope; } ;
typedef scalar_t__ OSStatus ;
typedef int * CFStringRef ;
typedef TYPE_1__ AudioObjectPropertyAddress ;
typedef int AudioDeviceID ;


 scalar_t__ AudioObjectGetPropertyData (int ,TYPE_1__*,int,int **,int*,int *) ;
 int CFRelease (int *) ;
 int * CFStringCreateWithCString (int *,scalar_t__,int ) ;
 int PROPERTY_DEFAULT_DEVICE ;
 scalar_t__ astrcmpi (scalar_t__,char*) ;
 scalar_t__ bstrdup (char*) ;
 int coreaudio_get_device_id (int *,int *) ;
 int get_default_output_device (struct coreaudio_data*) ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeGlobal ;
 int kAudioObjectSystemObject ;
 int kCFStringEncodingUTF8 ;
 scalar_t__ noErr ;

__attribute__((used)) static bool find_device_id_by_uid(struct coreaudio_data *ca)
{
 UInt32 size = sizeof(AudioDeviceID);
 CFStringRef cf_uid = ((void*)0);
 CFStringRef qual = ((void*)0);
 UInt32 qual_size = 0;
 OSStatus stat;
 bool success;

 AudioObjectPropertyAddress addr = {
  .mScope = kAudioObjectPropertyScopeGlobal,
  .mElement = kAudioObjectPropertyElementMaster};

 if (!ca->device_uid)
  ca->device_uid = bstrdup("default");

 ca->default_device = 0;
 ca->no_devices = 0;


 if (astrcmpi(ca->device_uid, "default") == 0) {
  if (ca->input) {
   ca->default_device = 1;
  } else {
   if (!get_default_output_device(ca)) {
    ca->no_devices = 1;
    return 0;
   }
  }
 }

 cf_uid = CFStringCreateWithCString(((void*)0), ca->device_uid,
        kCFStringEncodingUTF8);

 if (ca->default_device) {
  addr.mSelector = PROPERTY_DEFAULT_DEVICE;
  stat = AudioObjectGetPropertyData(kAudioObjectSystemObject,
        &addr, qual_size, &qual,
        &size, &ca->device_id);
  success = (stat == noErr);
 } else {
  success = coreaudio_get_device_id(cf_uid, &ca->device_id);
 }

 if (cf_uid)
  CFRelease(cf_uid);

 return success;
}
