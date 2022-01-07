
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_device_t ;
typedef enum gs_stencil_side { ____Placeholder_gs_stencil_side } gs_stencil_side ;
typedef enum gs_stencil_op_type { ____Placeholder_gs_stencil_op_type } gs_stencil_op_type ;
typedef int GLenum ;


 int LOG_ERROR ;
 int UNUSED_PARAMETER (int *) ;
 int blog (int ,char*) ;
 int convert_gs_stencil_op (int) ;
 int convert_gs_stencil_side (int) ;
 int glStencilOpSeparate (int ,int ,int ,int ) ;
 int gl_success (char*) ;

void device_stencil_op(gs_device_t *device, enum gs_stencil_side side,
         enum gs_stencil_op_type fail,
         enum gs_stencil_op_type zfail,
         enum gs_stencil_op_type zpass)
{
 GLenum gl_side = convert_gs_stencil_side(side);
 GLenum gl_fail = convert_gs_stencil_op(fail);
 GLenum gl_zfail = convert_gs_stencil_op(zfail);
 GLenum gl_zpass = convert_gs_stencil_op(zpass);

 glStencilOpSeparate(gl_side, gl_fail, gl_zfail, gl_zpass);
 if (!gl_success("glStencilOpSeparate"))
  blog(LOG_ERROR, "device_stencil_op (GL) failed");

 UNUSED_PARAMETER(device);
}
