
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_list {int dummy; } ;
struct add_data {int member_1; struct device_list* member_0; } ;


 int coreaudio_enum_add_device ;
 int enum_devices (int ,struct add_data*) ;

void coreaudio_enum_devices(struct device_list *list, bool input)
{
 struct add_data data = {list, input};
 enum_devices(coreaudio_enum_add_device, &data);
}
