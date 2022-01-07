
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_device_t ;
typedef enum gs_blend_type { ____Placeholder_gs_blend_type } gs_blend_type ;
typedef int GLenum ;


 int LOG_ERROR ;
 int UNUSED_PARAMETER (int *) ;
 int blog (int ,char*) ;
 int convert_gs_blend_type (int) ;
 int glBlendFunc (int ,int ) ;
 int gl_success (char*) ;

void device_blend_function(gs_device_t *device, enum gs_blend_type src,
      enum gs_blend_type dest)
{
 GLenum gl_src = convert_gs_blend_type(src);
 GLenum gl_dst = convert_gs_blend_type(dest);

 glBlendFunc(gl_src, gl_dst);
 if (!gl_success("glBlendFunc"))
  blog(LOG_ERROR, "device_blend_function (GL) failed");

 UNUSED_PARAMETER(device);
}
