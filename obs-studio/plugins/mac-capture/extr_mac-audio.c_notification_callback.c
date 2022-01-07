
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct coreaudio_data {int retry_time; int device_name; } ;
typedef int UInt32 ;
struct TYPE_3__ {scalar_t__ mSelector; } ;
typedef int OSStatus ;
typedef TYPE_1__ AudioObjectPropertyAddress ;
typedef int AudioObjectID ;


 int LOG_INFO ;
 scalar_t__ PROPERTY_DEFAULT_DEVICE ;
 int UNUSED_PARAMETER (int ) ;
 int blog (int ,char*,int ) ;
 int coreaudio_begin_reconnect (struct coreaudio_data*) ;
 int coreaudio_stop (struct coreaudio_data*) ;
 int coreaudio_uninit (struct coreaudio_data*) ;
 int noErr ;

__attribute__((used)) static OSStatus
notification_callback(AudioObjectID id, UInt32 num_addresses,
        const AudioObjectPropertyAddress addresses[], void *data)
{
 struct coreaudio_data *ca = data;

 coreaudio_stop(ca);
 coreaudio_uninit(ca);

 if (addresses[0].mSelector == PROPERTY_DEFAULT_DEVICE)
  ca->retry_time = 300;
 else
  ca->retry_time = 2000;

 blog(LOG_INFO,
      "coreaudio: device '%s' disconnected or changed.  "
      "attempting to reconnect",
      ca->device_name);

 coreaudio_begin_reconnect(ca);

 UNUSED_PARAMETER(id);
 UNUSED_PARAMETER(num_addresses);

 return noErr;
}
