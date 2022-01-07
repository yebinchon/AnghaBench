
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int obs_properties_t ;
struct TYPE_7__ {int settings; int data; } ;
struct TYPE_6__ {int * (* get_properties ) (int ) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_output_t ;


 int obs_output_valid (TYPE_3__ const*,char*) ;
 int obs_properties_apply_settings (int *,int ) ;
 int * stub1 (int ) ;

obs_properties_t *obs_output_properties(const obs_output_t *output)
{
 if (!obs_output_valid(output, "obs_output_properties"))
  return ((void*)0);

 if (output && output->info.get_properties) {
  obs_properties_t *props;
  props = output->info.get_properties(output->context.data);
  obs_properties_apply_settings(props, output->context.settings);
  return props;
 }

 return ((void*)0);
}
