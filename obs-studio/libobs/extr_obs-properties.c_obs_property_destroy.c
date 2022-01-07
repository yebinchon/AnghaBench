
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_property {scalar_t__ type; struct obs_property* long_desc; struct obs_property* desc; struct obs_property* name; } ;


 scalar_t__ OBS_PROPERTY_EDITABLE_LIST ;
 scalar_t__ OBS_PROPERTY_FLOAT ;
 scalar_t__ OBS_PROPERTY_FRAME_RATE ;
 scalar_t__ OBS_PROPERTY_GROUP ;
 scalar_t__ OBS_PROPERTY_INT ;
 scalar_t__ OBS_PROPERTY_LIST ;
 scalar_t__ OBS_PROPERTY_PATH ;
 int bfree (struct obs_property*) ;
 int editable_list_data_free (int ) ;
 int float_data_free (int ) ;
 int frame_rate_data_free (int ) ;
 int get_property_data (struct obs_property*) ;
 int group_data_free (int ) ;
 int int_data_free (int ) ;
 int list_data_free (int ) ;
 int path_data_free (int ) ;

__attribute__((used)) static void obs_property_destroy(struct obs_property *property)
{
 if (property->type == OBS_PROPERTY_LIST)
  list_data_free(get_property_data(property));
 else if (property->type == OBS_PROPERTY_PATH)
  path_data_free(get_property_data(property));
 else if (property->type == OBS_PROPERTY_EDITABLE_LIST)
  editable_list_data_free(get_property_data(property));
 else if (property->type == OBS_PROPERTY_FRAME_RATE)
  frame_rate_data_free(get_property_data(property));
 else if (property->type == OBS_PROPERTY_GROUP)
  group_data_free(get_property_data(property));
 else if (property->type == OBS_PROPERTY_INT)
  int_data_free(get_property_data(property));
 else if (property->type == OBS_PROPERTY_FLOAT)
  float_data_free(get_property_data(property));

 bfree(property->name);
 bfree(property->desc);
 bfree(property->long_desc);
 bfree(property);
}
