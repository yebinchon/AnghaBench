
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_device_t ;
typedef enum gs_stencil_side { ____Placeholder_gs_stencil_side } gs_stencil_side ;
typedef enum gs_depth_test { ____Placeholder_gs_depth_test } gs_depth_test ;
typedef int GLenum ;


 int LOG_ERROR ;
 int UNUSED_PARAMETER (int *) ;
 int blog (int ,char*) ;
 int convert_gs_depth_test (int) ;
 int convert_gs_stencil_side (int) ;
 int glStencilFuncSeparate (int ,int ,int ,int) ;
 int gl_success (char*) ;

void device_stencil_function(gs_device_t *device, enum gs_stencil_side side,
        enum gs_depth_test test)
{
 GLenum gl_side = convert_gs_stencil_side(side);
 GLenum gl_test = convert_gs_depth_test(test);

 glStencilFuncSeparate(gl_side, gl_test, 0, 0xFFFFFFFF);
 if (!gl_success("glStencilFuncSeparate"))
  blog(LOG_ERROR, "device_stencil_function (GL) failed");

 UNUSED_PARAMETER(device);
}
