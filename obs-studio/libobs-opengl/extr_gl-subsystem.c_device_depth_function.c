
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_device_t ;
typedef enum gs_depth_test { ____Placeholder_gs_depth_test } gs_depth_test ;
typedef int GLenum ;


 int LOG_ERROR ;
 int UNUSED_PARAMETER (int *) ;
 int blog (int ,char*) ;
 int convert_gs_depth_test (int) ;
 int glDepthFunc (int ) ;
 int gl_success (char*) ;

void device_depth_function(gs_device_t *device, enum gs_depth_test test)
{
 GLenum gl_test = convert_gs_depth_test(test);

 glDepthFunc(gl_test);
 if (!gl_success("glDepthFunc"))
  blog(LOG_ERROR, "device_depth_function (GL) failed");

 UNUSED_PARAMETER(device);
}
