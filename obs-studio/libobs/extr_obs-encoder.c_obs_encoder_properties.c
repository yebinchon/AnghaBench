
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int obs_properties_t ;
struct TYPE_6__ {int settings; int data; } ;
struct TYPE_7__ {int * (* get_properties ) (int ) ;int type_data; int * (* get_properties2 ) (int ,int ) ;} ;
struct TYPE_8__ {TYPE_1__ context; TYPE_2__ orig_info; } ;
typedef TYPE_3__ obs_encoder_t ;


 int obs_encoder_valid (TYPE_3__ const*,char*) ;
 int obs_properties_apply_settings (int *,int ) ;
 int * stub1 (int ,int ) ;
 int * stub2 (int ) ;

obs_properties_t *obs_encoder_properties(const obs_encoder_t *encoder)
{
 if (!obs_encoder_valid(encoder, "obs_encoder_properties"))
  return ((void*)0);

 if (encoder->orig_info.get_properties2) {
  obs_properties_t *props;
  props = encoder->orig_info.get_properties2(
   encoder->context.data, encoder->orig_info.type_data);
  obs_properties_apply_settings(props, encoder->context.settings);
  return props;

 } else if (encoder->orig_info.get_properties) {
  obs_properties_t *props;
  props = encoder->orig_info.get_properties(
   encoder->context.data);
  obs_properties_apply_settings(props, encoder->context.settings);
  return props;
 }

 return ((void*)0);
}
