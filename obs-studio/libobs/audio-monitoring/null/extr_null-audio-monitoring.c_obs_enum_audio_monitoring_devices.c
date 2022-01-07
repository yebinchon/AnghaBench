
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* obs_enum_audio_device_cb ;


 int UNUSED_PARAMETER (void*) ;

void obs_enum_audio_monitoring_devices(obs_enum_audio_device_cb cb, void *data)
{
 UNUSED_PARAMETER(cb);
 UNUSED_PARAMETER(data);
}
