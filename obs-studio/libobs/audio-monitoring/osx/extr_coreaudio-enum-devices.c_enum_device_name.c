
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_name_info {int name; int id; } ;


 int bstrdup (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool enum_device_name(void *data, const char *name, const char *id)
{
 struct device_name_info *info = data;

 if (strcmp(info->id, id) == 0) {
  info->name = bstrdup(name);
  return 0;
 }

 return 1;
}
