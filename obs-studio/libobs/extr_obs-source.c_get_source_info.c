
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct obs_source_info {int id; } ;
struct TYPE_3__ {size_t num; struct obs_source_info* array; } ;
struct TYPE_4__ {TYPE_1__ source_types; } ;


 TYPE_2__* obs ;
 scalar_t__ strcmp (int ,char const*) ;

struct obs_source_info *get_source_info(const char *id)
{
 for (size_t i = 0; i < obs->source_types.num; i++) {
  struct obs_source_info *info = &obs->source_types.array[i];
  if (strcmp(info->id, id) == 0)
   return info;
 }

 return ((void*)0);
}
