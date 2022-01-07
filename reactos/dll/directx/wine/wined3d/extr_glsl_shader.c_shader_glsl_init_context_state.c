
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* p_glEnable ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;


 int GL_PROGRAM_POINT_SIZE ;
 int checkGLcall (char*) ;
 int stub1 (int ) ;

__attribute__((used)) static void shader_glsl_init_context_state(struct wined3d_context *context)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    gl_info->gl_ops.gl.p_glEnable(GL_PROGRAM_POINT_SIZE);
    checkGLcall("GL_PROGRAM_POINT_SIZE");
}
