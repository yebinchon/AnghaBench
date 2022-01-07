
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;


 int UNUSED_PARAMETER (void*) ;
 int limit_cx_clicked ;
 int limit_cy_clicked ;
 int obs_module_text (char*) ;
 int * obs_properties_add_bool (int *,char*,int ) ;
 int obs_properties_add_float_slider (int *,char*,int ,double,double,double) ;
 int obs_properties_add_int (int *,char*,int ,int,int,int) ;
 int * obs_properties_create () ;
 int obs_property_set_modified_callback (int *,int ) ;

__attribute__((used)) static obs_properties_t *scroll_filter_properties(void *data)
{
 obs_properties_t *props = obs_properties_create();
 obs_property_t *p;

 obs_properties_add_float_slider(props, "speed_x",
     obs_module_text("ScrollFilter.SpeedX"),
     -500.0, 500.0, 1.0);
 obs_properties_add_float_slider(props, "speed_y",
     obs_module_text("ScrollFilter.SpeedY"),
     -500.0, 500.0, 1.0);

 p = obs_properties_add_bool(props, "limit_cx",
        obs_module_text("ScrollFilter.LimitWidth"));
 obs_property_set_modified_callback(p, limit_cx_clicked);
 obs_properties_add_int(props, "cx", obs_module_text("Crop.Width"), 1,
          8192, 1);

 p = obs_properties_add_bool(
  props, "limit_cy", obs_module_text("ScrollFilter.LimitHeight"));
 obs_property_set_modified_callback(p, limit_cy_clicked);
 obs_properties_add_int(props, "cy", obs_module_text("Crop.Height"), 1,
          8192, 1);

 obs_properties_add_bool(props, "loop",
    obs_module_text("ScrollFilter.Loop"));

 UNUSED_PARAMETER(data);
 return props;
}
