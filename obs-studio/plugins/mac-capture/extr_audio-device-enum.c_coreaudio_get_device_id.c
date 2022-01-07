
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_id_data {int member_2; int found; int * member_1; int member_0; } ;
typedef int CFStringRef ;
typedef int AudioDeviceID ;


 int enum_devices (int ,struct device_id_data*) ;
 int get_device_id ;

bool coreaudio_get_device_id(CFStringRef uid, AudioDeviceID *id)
{
 struct device_id_data data = {uid, id, 0};
 enum_devices(get_device_id, &data);
 return data.found;
}
