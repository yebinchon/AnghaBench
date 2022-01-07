
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* array; int num; } ;
struct device_list {TYPE_3__ items; } ;
struct coreaudio_data {int device_uid; } ;
struct TYPE_4__ {int array; } ;
struct TYPE_5__ {TYPE_1__ value; } ;


 int bfree (int ) ;
 int bstrdup (int ) ;
 int coreaudio_enum_devices (struct device_list*,int) ;
 int device_list_free (struct device_list*) ;
 int memset (struct device_list*,int ,int) ;

__attribute__((used)) static bool get_default_output_device(struct coreaudio_data *ca)
{
 struct device_list list;

 memset(&list, 0, sizeof(struct device_list));
 coreaudio_enum_devices(&list, 0);

 if (!list.items.num)
  return 0;

 bfree(ca->device_uid);
 ca->device_uid = bstrdup(list.items.array[0].value.array);

 device_list_free(&list);
 return 1;
}
