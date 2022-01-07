
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int O_NONBLOCK ;
 int O_RDWR ;
 int obs_data_get_string (int *,char*) ;
 int * obs_properties_get (int *,char*) ;
 int obs_property_modified (int *,int *) ;
 int v4l2_close (int) ;
 int v4l2_input_list (int,int *) ;
 int v4l2_open (int ,int) ;
 int v4l2_props_set_enabled (int *,int *,int) ;

__attribute__((used)) static bool device_selected(obs_properties_t *props, obs_property_t *p,
       obs_data_t *settings)
{
 int dev = v4l2_open(obs_data_get_string(settings, "device_id"),
       O_RDWR | O_NONBLOCK);

 v4l2_props_set_enabled(props, p, (dev == -1) ? 0 : 1);

 if (dev == -1)
  return 0;

 obs_property_t *prop = obs_properties_get(props, "input");
 v4l2_input_list(dev, prop);
 v4l2_close(dev);

 obs_property_modified(prop, settings);

 return 1;
}
