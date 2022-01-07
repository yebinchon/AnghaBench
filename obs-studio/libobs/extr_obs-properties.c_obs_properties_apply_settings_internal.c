
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct obs_property {scalar_t__ type; struct obs_property* next; int priv; int (* modified2 ) (int ,TYPE_1__*,struct obs_property*,int *) ;int (* modified ) (TYPE_1__*,struct obs_property*,int *) ;} ;
struct TYPE_7__ {struct obs_property* first_property; } ;
typedef TYPE_1__ obs_properties_t ;
typedef int obs_data_t ;


 scalar_t__ OBS_PROPERTY_GROUP ;
 TYPE_1__* obs_property_group_content (struct obs_property*) ;
 int stub1 (TYPE_1__*,struct obs_property*,int *) ;
 int stub2 (int ,TYPE_1__*,struct obs_property*,int *) ;

void obs_properties_apply_settings_internal(obs_properties_t *props,
         obs_data_t *settings,
         obs_properties_t *realprops)
{
 struct obs_property *p;

 p = props->first_property;
 while (p) {
  if (p->type == OBS_PROPERTY_GROUP) {
   obs_properties_apply_settings_internal(
    obs_property_group_content(p), settings,
    realprops);
  }
  if (p->modified)
   p->modified(realprops, p, settings);
  else if (p->modified2)
   p->modified2(p->priv, realprops, p, settings);
  p = p->next;
 }
}
