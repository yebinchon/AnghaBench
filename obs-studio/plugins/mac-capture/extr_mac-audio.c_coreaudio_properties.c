
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; struct device_item* array; } ;
struct device_list {TYPE_1__ items; } ;
struct TYPE_6__ {char* array; } ;
struct TYPE_5__ {int array; } ;
struct device_item {TYPE_3__ value; TYPE_2__ name; } ;
typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int TEXT_DEVICE ;
 int TEXT_DEVICE_DEFAULT ;
 int coreaudio_enum_devices (struct device_list*,int) ;
 int device_list_free (struct device_list*) ;
 int memset (struct device_list*,int ,int) ;
 int * obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_list_add_string (int *,int ,char*) ;

__attribute__((used)) static obs_properties_t *coreaudio_properties(bool input)
{
 obs_properties_t *props = obs_properties_create();
 obs_property_t *property;
 struct device_list devices;

 memset(&devices, 0, sizeof(struct device_list));

 property = obs_properties_add_list(props, "device_id", TEXT_DEVICE,
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);

 coreaudio_enum_devices(&devices, input);

 if (devices.items.num)
  obs_property_list_add_string(property, TEXT_DEVICE_DEFAULT,
          "default");

 for (size_t i = 0; i < devices.items.num; i++) {
  struct device_item *item = devices.items.array + i;
  obs_property_list_add_string(property, item->name.array,
          item->value.array);
 }

 device_list_free(&devices);
 return props;
}
