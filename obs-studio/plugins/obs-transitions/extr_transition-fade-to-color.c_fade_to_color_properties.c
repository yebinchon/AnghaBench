
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int S_COLOR ;
 int S_COLOR_TEXT ;
 int S_SWITCH_POINT ;
 int S_SWITCH_POINT_TEXT ;
 int UNUSED_PARAMETER (void*) ;
 int obs_properties_add_color (int *,int ,int ) ;
 int * obs_properties_add_int_slider (int *,int ,int ,int ,int,int) ;
 int * obs_properties_create () ;
 int obs_property_int_set_suffix (int *,char*) ;

__attribute__((used)) static obs_properties_t *fade_to_color_properties(void *data)
{
 obs_properties_t *props = obs_properties_create();

 obs_properties_add_color(props, S_COLOR, S_COLOR_TEXT);
 obs_property_t *p = obs_properties_add_int_slider(
  props, S_SWITCH_POINT, S_SWITCH_POINT_TEXT, 0, 100, 1);
 obs_property_int_set_suffix(p, "%");

 UNUSED_PARAMETER(data);
 return props;
}
