
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array; } ;
struct device_item {TYPE_1__ value; TYPE_1__ name; } ;
struct add_data {int list; scalar_t__ input; } ;
typedef int item ;
typedef int CFStringRef ;
typedef int AudioDeviceID ;


 int UNUSED_PARAMETER (int ) ;
 int cfstr_copy_dstr (int ,int ,TYPE_1__*) ;
 int device_is_input (int ) ;
 int device_item_free (struct device_item*) ;
 int device_list_add (int ,struct device_item*) ;
 int kCFStringEncodingUTF8 ;
 int memset (struct device_item*,int ,int) ;

__attribute__((used)) static bool coreaudio_enum_add_device(void *param, CFStringRef cf_name,
          CFStringRef cf_uid, AudioDeviceID id)
{
 struct add_data *data = param;
 struct device_item item;

 memset(&item, 0, sizeof(item));

 if (!cfstr_copy_dstr(cf_name, kCFStringEncodingUTF8, &item.name))
  goto fail;
 if (!cfstr_copy_dstr(cf_uid, kCFStringEncodingUTF8, &item.value))
  goto fail;

 if (data->input || !device_is_input(item.value.array))
  device_list_add(data->list, &item);

fail:
 device_item_free(&item);

 UNUSED_PARAMETER(id);
 return 1;
}
