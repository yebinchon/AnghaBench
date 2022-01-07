
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;
struct TYPE_2__ {int source; } ;


 int OBS_COMBO_FORMAT_INT ;
 int OBS_COMBO_TYPE_LIST ;
 int OBS_TEXT_DEFAULT ;
 int XSHM_DATA (void*) ;
 TYPE_1__* data ;
 int obs_data_release (int *) ;
 int obs_module_text (char*) ;
 int * obs_properties_add_bool (int *,char*,int ) ;
 int obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int * obs_properties_add_text (int *,char*,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_modified (int *,int *) ;
 int obs_property_set_modified_callback (int *,int ) ;
 int * obs_source_get_settings (int ) ;
 int xshm_server_changed ;
 int xshm_toggle_advanced ;

__attribute__((used)) static obs_properties_t *xshm_properties(void *vptr)
{
 XSHM_DATA(vptr);

 obs_properties_t *props = obs_properties_create();

 obs_properties_add_list(props, "screen", obs_module_text("Screen"),
    OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
 obs_properties_add_bool(props, "show_cursor",
    obs_module_text("CaptureCursor"));
 obs_property_t *advanced = obs_properties_add_bool(
  props, "advanced", obs_module_text("AdvancedSettings"));
 obs_property_t *server = obs_properties_add_text(
  props, "server", obs_module_text("XServer"), OBS_TEXT_DEFAULT);

 obs_property_set_modified_callback(advanced, xshm_toggle_advanced);
 obs_property_set_modified_callback(server, xshm_server_changed);


 obs_data_t *settings = obs_source_get_settings(data->source);
 obs_property_modified(server, settings);
 obs_data_release(settings);

 return props;
}
