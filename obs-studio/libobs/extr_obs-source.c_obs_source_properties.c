
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int settings; int data; } ;
struct TYPE_7__ {int * (* get_properties ) (int ) ;int type_data; int * (* get_properties2 ) (int ,int ) ;} ;
struct TYPE_8__ {TYPE_1__ context; TYPE_2__ info; } ;
typedef TYPE_3__ obs_source_t ;
typedef int obs_properties_t ;


 int data_valid (TYPE_3__ const*,char*) ;
 int obs_properties_apply_settings (int *,int ) ;
 int * stub1 (int ,int ) ;
 int * stub2 (int ) ;

obs_properties_t *obs_source_properties(const obs_source_t *source)
{
 if (!data_valid(source, "obs_source_properties"))
  return ((void*)0);

 if (source->info.get_properties2) {
  obs_properties_t *props;
  props = source->info.get_properties2(source->context.data,
           source->info.type_data);
  obs_properties_apply_settings(props, source->context.settings);
  return props;

 } else if (source->info.get_properties) {
  obs_properties_t *props;
  props = source->info.get_properties(source->context.data);
  obs_properties_apply_settings(props, source->context.settings);
  return props;
 }

 return ((void*)0);
}
