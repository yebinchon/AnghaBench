
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;
typedef scalar_t__ int64_t ;


 scalar_t__ TIMING_TIME ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 int obs_module_text (char*) ;
 int * obs_properties_get (int *,char*) ;
 int obs_property_int_set_suffix (int *,char*) ;
 int obs_property_set_description (int *,int ) ;

__attribute__((used)) static bool transition_point_type_modified(obs_properties_t *ppts,
        obs_property_t *p, obs_data_t *s)
{
 int64_t type = obs_data_get_int(s, "tp_type");
 p = obs_properties_get(ppts, "transition_point");

 if (type == TIMING_TIME) {
  obs_property_set_description(
   p, obs_module_text("TransitionPoint"));
  obs_property_int_set_suffix(p, " ms");
 } else {
  obs_property_set_description(
   p, obs_module_text("TransitionPointFrame"));
  obs_property_int_set_suffix(p, "");
 }
 return 1;
}
