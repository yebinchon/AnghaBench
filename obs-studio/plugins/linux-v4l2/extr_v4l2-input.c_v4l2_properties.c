
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
 int OBS_COMBO_FORMAT_STRING ;
 int OBS_COMBO_TYPE_LIST ;
 int V4L2_DATA (void*) ;
 int VIDEO_RANGE_DEFAULT ;
 int VIDEO_RANGE_FULL ;
 int VIDEO_RANGE_PARTIAL ;
 TYPE_1__* data ;
 int device_selected ;
 int format_selected ;
 int input_selected ;
 int obs_data_release (int *) ;
 int obs_module_text (char*) ;
 int obs_properties_add_bool (int *,char*,int ) ;
 int * obs_properties_add_list (int *,char*,int ,int ,int ) ;
 int * obs_properties_create () ;
 int obs_property_list_add_int (int *,int ,int ) ;
 int obs_property_set_modified_callback (int *,int ) ;
 int obs_property_set_visible (int *,int) ;
 int * obs_source_get_settings (int ) ;
 int resolution_selected ;
 int v4l2_device_list (int *,int *) ;

__attribute__((used)) static obs_properties_t *v4l2_properties(void *vptr)
{
 V4L2_DATA(vptr);

 obs_properties_t *props = obs_properties_create();

 obs_property_t *device_list = obs_properties_add_list(
  props, "device_id", obs_module_text("Device"),
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_STRING);

 obs_property_t *input_list = obs_properties_add_list(
  props, "input", obs_module_text("Input"), OBS_COMBO_TYPE_LIST,
  OBS_COMBO_FORMAT_INT);

 obs_property_t *format_list = obs_properties_add_list(
  props, "pixelformat", obs_module_text("VideoFormat"),
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);

 obs_property_t *standard_list = obs_properties_add_list(
  props, "standard", obs_module_text("VideoStandard"),
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
 obs_property_set_visible(standard_list, 0);

 obs_property_t *dv_timing_list = obs_properties_add_list(
  props, "dv_timing", obs_module_text("DVTiming"),
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
 obs_property_set_visible(dv_timing_list, 0);

 obs_property_t *resolution_list = obs_properties_add_list(
  props, "resolution", obs_module_text("Resolution"),
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);

 obs_properties_add_list(props, "framerate",
    obs_module_text("FrameRate"),
    OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);

 obs_property_t *color_range_list = obs_properties_add_list(
  props, "color_range", obs_module_text("ColorRange"),
  OBS_COMBO_TYPE_LIST, OBS_COMBO_FORMAT_INT);
 obs_property_list_add_int(color_range_list,
      obs_module_text("ColorRange.Default"),
      VIDEO_RANGE_DEFAULT);
 obs_property_list_add_int(color_range_list,
      obs_module_text("ColorRange.Partial"),
      VIDEO_RANGE_PARTIAL);
 obs_property_list_add_int(color_range_list,
      obs_module_text("ColorRange.Full"),
      VIDEO_RANGE_FULL);

 obs_properties_add_bool(props, "buffering",
    obs_module_text("UseBuffering"));

 obs_data_t *settings = obs_source_get_settings(data->source);
 v4l2_device_list(device_list, settings);
 obs_data_release(settings);

 obs_property_set_modified_callback(device_list, device_selected);
 obs_property_set_modified_callback(input_list, input_selected);
 obs_property_set_modified_callback(format_list, format_selected);
 obs_property_set_modified_callback(resolution_list,
        resolution_selected);

 return props;
}
