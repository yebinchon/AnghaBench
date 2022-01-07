
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int OBS_COMBO_FORMAT_INT ;
 int OBS_COMBO_TYPE_LIST ;
 int TEXT_CAPTURE_CURSOR ;
 int TEXT_MONITOR ;
 int UNUSED_PARAMETER (void*) ;
 scalar_t__ get_monitor_props (int *,int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int obs_properties_add_bool (int *,char*,int ) ;
 int * obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int * obs_properties_create () ;

__attribute__((used)) static obs_properties_t *duplicator_capture_properties(void *unused)
{
 int monitor_idx = 0;

 UNUSED_PARAMETER(unused);

 obs_properties_t *props = obs_properties_create();

 obs_property_t *monitors = obs_properties_add_list(
  props, "monitor", TEXT_MONITOR, OBS_COMBO_TYPE_LIST,
  OBS_COMBO_FORMAT_INT);

 obs_properties_add_bool(props, "capture_cursor", TEXT_CAPTURE_CURSOR);

 obs_enter_graphics();

 while (get_monitor_props(monitors, monitor_idx++))
  ;

 obs_leave_graphics();

 return props;
}
