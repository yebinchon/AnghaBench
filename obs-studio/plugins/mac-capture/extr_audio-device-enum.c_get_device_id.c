
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_id_data {int found; int * id; int uid; } ;
typedef int CFStringRef ;
typedef int AudioDeviceID ;


 scalar_t__ CFStringCompare (int ,int ,int ) ;
 int UNUSED_PARAMETER (int ) ;

__attribute__((used)) static bool get_device_id(void *param, CFStringRef cf_name, CFStringRef cf_uid,
     AudioDeviceID id)
{
 struct device_id_data *data = param;

 if (CFStringCompare(cf_uid, data->uid, 0) == 0) {
  *data->id = id;
  data->found = 1;
  return 0;
 }

 UNUSED_PARAMETER(cf_name);
 return 1;
}
