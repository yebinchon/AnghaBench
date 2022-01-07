
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct coreaudio_data {char* device_name; int device_id; } ;
typedef int UInt32 ;
struct TYPE_3__ {int member_2; int member_1; int member_0; } ;
typedef scalar_t__ OSStatus ;
typedef int * CFStringRef ;
typedef TYPE_1__ AudioObjectPropertyAddress ;


 scalar_t__ AudioObjectGetPropertyData (int ,TYPE_1__ const*,int ,int *,int*,int **) ;
 int CFRelease (int *) ;
 int LOG_WARNING ;
 int bfree (char*) ;
 int blog (int ,char*,...) ;
 char* cfstr_copy_cstr (int *,int ) ;
 int kAudioDevicePropertyDeviceNameCFString ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeInput ;
 int kCFStringEncodingUTF8 ;
 scalar_t__ noErr ;

__attribute__((used)) static bool coreaudio_get_device_name(struct coreaudio_data *ca)
{
 CFStringRef cf_name = ((void*)0);
 UInt32 size = sizeof(CFStringRef);
 char *name = ((void*)0);

 const AudioObjectPropertyAddress addr = {
  kAudioDevicePropertyDeviceNameCFString,
  kAudioObjectPropertyScopeInput,
  kAudioObjectPropertyElementMaster};

 OSStatus stat = AudioObjectGetPropertyData(ca->device_id, &addr, 0,
         ((void*)0), &size, &cf_name);
 if (stat != noErr) {
  blog(LOG_WARNING,
       "[coreaudio_get_device_name] failed to "
       "get name: %d",
       (int)stat);
  return 0;
 }

 name = cfstr_copy_cstr(cf_name, kCFStringEncodingUTF8);
 if (!name) {
  blog(LOG_WARNING, "[coreaudio_get_device_name] failed to "
      "convert name to cstr for some reason");
  return 0;
 }

 bfree(ca->device_name);
 ca->device_name = name;

 if (cf_name)
  CFRelease(cf_name);

 return 1;
}
