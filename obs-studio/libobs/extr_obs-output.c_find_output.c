
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct obs_output_info {int id; } ;
struct TYPE_3__ {size_t num; struct obs_output_info const* array; } ;
struct TYPE_4__ {TYPE_1__ output_types; } ;


 TYPE_2__* obs ;
 scalar_t__ strcmp (int ,char const*) ;

const struct obs_output_info *find_output(const char *id)
{
 size_t i;
 for (i = 0; i < obs->output_types.num; i++)
  if (strcmp(obs->output_types.array[i].id, id) == 0)
   return obs->output_types.array + i;

 return ((void*)0);
}
