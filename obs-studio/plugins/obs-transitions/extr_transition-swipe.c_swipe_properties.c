
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int S_DIRECTION ;
 int S_SWIPE_IN ;
 int UNUSED_PARAMETER (void*) ;
 int obs_module_text (char*) ;
 int obs_properties_add_bool (int *,int ,int ) ;
 int * obs_properties_add_list (int *,int ,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_list_add_string (int *,int ,char*) ;

__attribute__((used)) static obs_properties_t *swipe_properties(void *data)
{
 obs_properties_t *ppts = obs_properties_create();
 obs_property_t *p;

 p = obs_properties_add_list(ppts, S_DIRECTION,
        obs_module_text("Direction"),
        OBS_COMBO_TYPE_LIST,
        OBS_COMBO_FORMAT_STRING);
 obs_property_list_add_string(p, obs_module_text("Direction.Left"),
         "left");
 obs_property_list_add_string(p, obs_module_text("Direction.Right"),
         "right");
 obs_property_list_add_string(p, obs_module_text("Direction.Up"), "up");
 obs_property_list_add_string(p, obs_module_text("Direction.Down"),
         "down");

 obs_properties_add_bool(ppts, S_SWIPE_IN, obs_module_text("SwipeIn"));

 UNUSED_PARAMETER(data);
 return ppts;
}
