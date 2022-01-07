
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_enum_audio_device_cb ;


 int enum_audio_devices (int ,void*,int) ;

void obs_enum_audio_monitoring_devices(obs_enum_audio_device_cb cb, void *data)
{
 enum_audio_devices(cb, data, 0);
}
