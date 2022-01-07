
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_property_t ;
typedef int obs_properties_t ;
typedef int obs_data_t ;


 int O_NONBLOCK ;
 int O_RDWR ;
 int UNUSED_PARAMETER (int *) ;
 int obs_data_get_int (int *,char*) ;
 int obs_data_get_string (int *,char*) ;
 int * obs_properties_get (int *,char*) ;
 int obs_property_modified (int *,int *) ;
 int v4l2_close (int) ;
 int v4l2_framerate_list (int,int ,int,int,int *) ;
 int v4l2_open (int ,int) ;
 int v4l2_unpack_tuple (int*,int*,int ) ;

__attribute__((used)) static bool resolution_selected(obs_properties_t *props, obs_property_t *p,
    obs_data_t *settings)
{
 UNUSED_PARAMETER(p);
 int width, height;
 int dev = v4l2_open(obs_data_get_string(settings, "device_id"),
       O_RDWR | O_NONBLOCK);
 if (dev == -1)
  return 0;

 obs_property_t *prop = obs_properties_get(props, "framerate");
 v4l2_unpack_tuple(&width, &height,
     obs_data_get_int(settings, "resolution"));
 v4l2_framerate_list(dev, obs_data_get_int(settings, "pixelformat"),
       width, height, prop);
 v4l2_close(dev);

 obs_property_modified(prop, settings);

 return 1;
}
